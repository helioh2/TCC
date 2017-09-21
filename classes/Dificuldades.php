<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

}
