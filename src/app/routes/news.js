const dbConnection = require('../../config/dbConnection');

module.exports = app => {

  const connection = dbConnection();
  // Add headers
  app.use(function (req, res, next) {

      // Website you wish to allow to connect
      res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3001');

      // Request methods you wish to allow
      res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

      // Request headers you wish to allow
      res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

      // Set to true if you need the website to include cookies in the requests sent
      // to the API (e.g. in case you use sessions)
      res.setHeader('Access-Control-Allow-Credentials', true);

      // Pass to next layer of middleware
      next();
  });


  app.get('/news', (req, res) => {
    connection.query('SELECT * FROM news', (err, result) => {
      //res.render('news/news', {
        //news: result
      //});
      res.send(result);
    });
  });

  app.get('/pagos', (req, res) => {
    connection.query('SELECT * FROM pagos', (err, result) => {
      res.send(result);
    });
  });

  app.get('/pagos/:dni', (req, res) => {
    connection.query('SELECT * FROM pagos WHERE dni =' + req.params.dni, (err, result) => {
      res.send(result);
    });
  });

  app.get('/news/:dni', (req, res) => {
    connection.query('SELECT * FROM news WHERE dni =' + req.params.dni, (err, result) => {
      res.send(result);
    });
  });

  app.delete('/news/:id', (req, res) => {
    let sql = 'DELETE FROM news WHERE id_news =' + req.params.id;
    connection.query(sql, (err, result) => {
      if(!err){
      res.send('success:' + true);
      }
    });
  });

  app.post('/news', (req, res) => {
    const { dni,name,apellido,email,tel } = req.body;
    connection.query('INSERT INTO news SET ? ',{dni,name,apellido,email,tel}
    , (err, result) => {
      res.send(err);
    });
  });

  app.post('/news/update/:id', (req, res) => {
    const { dni, name, apellido , email, tel } = req.body;
    var id_news = req.params.id
    connection.query('UPDATE news SET ? WHERE ?', [{ dni: dni,name: name,apellido: apellido ,email:email,tel:tel }, { id_news: id_news }]
    , (err, result) => {
      res.send(err);
    });
  });
};
