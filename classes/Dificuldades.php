<?php

/**
 * Description of Dificuldades
 *
 * @author danielkarling
 */
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

                <table class="table table-hover">
                    <tr class="text-center">
                        <td class="text-uppercase bg-success"> Categoria </td>
                        <td class="text-uppercase bg-success"> % Dificuldade</td>
                        
                    </tr>
                    <?php
                    for ($index1 = 0; $index1 < count($this->difs); $index1++) {
                        if ($this->categorias[$index1]->getQtd() > 0) {
                            ?>   
                            <tr class="text-center bg-warning"> 
                                <td  class="text-success" ><?php echo $this->categorias[$index1]->getNome(); ?></td>
                                <td  class="text-success" ><?php echo round($this->difs[$index1], 2); ?></td>

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

    public function imprimeMediaAprovacao() {
        ?>
        <center>


            <div class="container-fluid">

                <table class="table table-hover">
                    <tr class="text-center">
                        <td class="text-uppercase bg-success"> Categoria </td>
                        <td class="text-uppercase bg-success"> % Aprovação </td>
                        <td class="text-uppercase bg-success"> Média </td>
                    </tr>
                    <?php
                    for ($index1 = 0; $index1 < count($this->difs); $index1++) {
                        if ($this->categorias[$index1]->getQtd() > 0) {
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
