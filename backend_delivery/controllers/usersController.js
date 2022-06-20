const User = require('../models/user');

module.exports = {

    register(req, res) {

        const user = req.body; //SE CAPTURAN LOS DATOS QUE ENVIE EL CLIENTE
        User.create(user, (err, data) => {

          if(err) {
            return res.status(501).json({
                success: false,
                message: 'Hubo un error en el registro del usuario',
                error: err
            });
          }

            return res.status(201).json({

              success: true,
              message: 'El registro se realizo correctamente',
              data: data // EL ID DEL NUEVO USUARIO QUE SE REGISTRO
            });

        });
    }
}