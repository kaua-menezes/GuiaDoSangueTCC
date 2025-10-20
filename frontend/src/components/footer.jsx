import logo from "../assets/Wsd.png";
import facebook from "../assets/Facebook.png";
import instagram from "../assets/instagram.png";
import briefcase from "../assets/briefcase.png";
import youtube from "../assets/youtube.png";
import logoGuiadesangue from "../assets/LogoGuiaDoSangue.png";
import "./footer.scss";

/*   <img src={logo} alt="LogoGuiaDoSangue" />  */

export default function Footer() {
  return (
    <div>
      <div className="cabecalho">
        <img src={logo} alt="Wsd" />

        <div className="icons">
          <img src={facebook} alt="Facebook" />

          <img src={instagram} alt="instagram" />

          <img src={briefcase} alt="briefcase" />

          <img src={youtube} alt="youtube" />
        </div>
      </div>

      <div className="GuiaDoSangue">
        <div className="logo">
          <img
            className="logo-guia"
            src={logoGuiadesangue}
            alt="LogoGuiaDoSangue"
          />
          <h1>Guia do Sangue</h1>
        </div>

        <div className="contatos">
          <h1>Contatos</h1>
          <p>Telefone: (11) 5543-8323</p>
          <p>E-mail: guiadosangue@gmail.com.br</p>
        </div>

        <div className="politicas">
          <ul>
            <li> Quem Somo </li>
            <li> Política de Privacidade </li>
            <li> Termos de Uso </li>
            <li> Fale Conosco </li>
          </ul>
        </div>
      </div>
    </div>
  );
}
