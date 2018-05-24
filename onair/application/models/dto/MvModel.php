<?php

class MvModel extends Model {

    
    //Los campos que desea ocultar para que no se reflejen en la vista.    
    protected $table = "mv";
    //Los campos que desea exculir del modelo.
    protected $exclude = ["hidden", "exclude", "table", "class", "db", "__data"];

    public function __construct($properties = null) {
        parent::__construct($properties);
        $this->class = get_class($this);
    }
    
    

}
