<?php
/**
 * Description of Dificuldades
 *
 * @author danielkarling
 */
require_once 'grafico/graficoPizza.php';

require_once 'grafico/Pizza2.php';

class Dificuldades {

    public $categorias;
    public $difs;

    function __construct($categorias, $difs) {
        $this->categorias = $categorias;
        $this->difs = $difs;
    }

    public function imprimeDificuldades() {
        ?>
        <center>


            <div class="container-fluid">

                <table class="table table-striped">

                    <?php
                    for ($index1 = 0; $index1 < count($this->difs); $index1++) {
                        ?>   
                        <tr class="text-center bg-warning"> 
                            <td  class="text-success" ><?php echo $this->categorias[$index1]->getNome(); ?></td>
                            <td  class="text-success" ><?php echo $this->difs[$index1]; ?></td>

                        </tr>
                        <?php
                    }
                    ?>
                </table>
            </div>
        </center>
        <?php
    }

    public function desenhaGraficos() {
        ?>
        <div class="container-fluid bg-warning">

            <table class="table table-bordered">
                <div class="row">
                    <?php
                    for ($index = 0; $index < count($this->categorias); $index++) {
                        ?>
                        <tr class="text-center bg-warning"> 
                            <td class = "text-success" >
                                <?php
                                $grafico = new graficoPizza();
                                $valor = $this->difs[$index];
                                $legenda = $this->categorias[$index]->getNome() . "";
                                $grafico->setValor($valor);
                                $grafico->setLegenda($legenda);
                                $grafico->setTitulo("Dificuldade em " . $legenda);
                                $grafico->desenhar();
                                ?>
                            </td>
                        </tr>

                        <?php
                    }
                    ?>
                </div>
            </table>
            <?php
        }

        public function imprimeMediaAprovacao() {
            ?>
            <center>


                <div class="container-fluid">

                    <table class="table table-striped">
                        <tr class="text-center">
                            <td class="alert-info"> Categoria </td>
                            <td class="alert-info"> % Aprovação </td>
                            <td class="alert-info"> Média </td>
                        </tr>
                        <?php
                        for ($index1 = 0; $index1 < count($this->difs); $index1++) {
                            if($this->categorias[$index1]->getQtd()>0){
                            ?>   
                            <tr class="text-center bg-warning"> 
                                <td  class="text-success" ><?php echo $this->categorias[$index1]->getNome(); ?></td>
                                <td  class="text-success" ><?php echo $this->categorias[$index1]->getPercentAprovacao(); ?></td>
                                <td  class="text-success" ><?php echo $this->categorias[$index1]->getMediaFinal(); ?></td>

                            </tr>
                            <?php
                            }
                        }
                        ?>
                    </table>
                </div>
            </center>
            <?php
        }

    }
    