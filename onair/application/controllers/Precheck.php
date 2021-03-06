<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Precheck extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('data/Dao_ticketOnair_model');
        $this->load->model('data/Dao_station_model');
        $this->load->model('data/Dao_band_model');
        $this->load->model('data/Dao_work_model');
        $this->load->model('data/Dao_technology_model');
        $this->load->model('data/Dao_statusOnair_model');
        $this->load->model('data/Dao_precheck_model');
        $this->load->model('data/Dao_followUp12h_model');
        $this->load->model('data/Dao_followUp24h_model');
        $this->load->model('data/Dao_followUp36h_model');
        $this->load->model('data/Dao_onAir12h_model');
        $this->load->model('data/Dao_onAir24h_model');
        $this->load->model('data/Dao_onAir36h_model');
        $this->load->model('data/Dao_preparationStage_model');
        $this->load->model('data/Dao_precheck_model');
        $this->load->model('data/Dao_user_model');
        $this->load->model('data/Dao_kpi_model');
    }

    public function prueba() {
        $db = new DB();
        $obj = $db->select("select count(k_id_onair) as count from ticket_on_air")->first();
        var_dump($obj->count);
    }

    public function getPendingList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getPendingList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getAssignList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getAssignList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getPrecheckList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getPrecheckList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getReinicioPrecheckList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getReinicioPrecheckList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getReinicio12hList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getReinicio12hList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getStandByList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getStandByList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getNotificationList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getNotificationList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getSeguimiento12hList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getSeguimiento12hList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getSeguimiento24hList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getSeguimiento24hList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getSeguimiento36hList() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getSeguimiento36hhList($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getAllTickets() {
        $response = null;
        if (Auth::check()) {
            $dao = new dao_ticketOnAir_model();
            $array = $dao->getAllTickets($this->request);
            $this->getFKRegisters($array->data["data"], true);
            $this->json($array->data);
        } else {
            $response = new Response(EMessages::NOT_ALLOWED);
        }
    }

    public function getFKRegisters(&$res, $flag = null) {
        $ticketsOnAir = new dao_ticketOnAir_model();
        $station = new dao_station_model();
        $band = new dao_band_model();
        $work = new dao_work_model();
        $technology = new dao_technology_model();
        $statusOnair = new dao_statusOnair_model();
        $stage = new dao_preparationStage_model();
        $assign = new dao_user_model();
        for ($j = 0; $j < count($res); $j++) {
            if ($flag == true) {
                $daoAutoRecord = new Dao_autorecord_model();
                $daoAutoRecord->record($res[$j]);
            }
            $res[$j]->k_id_status_onair = $statusOnair->findById($res[$j])->data; //Status onair
            $res[$j]->k_id_station = $station->findById($res[$j]->k_id_station)->data; //Station
            $res[$j]->k_id_band = $band->findById($res[$j]->k_id_band)->data; //band
            $res[$j]->k_id_work = $work->findById($res[$j]->k_id_work)->data; //work
            $res[$j]->k_id_technology = $technology->findById($res[$j]->k_id_technology)->data; //technology
            $res[$j]->k_id_preparation = $stage->findByIdPreparation($res[$j]->k_id_preparation)->data; //preparation
            if ($res[$j]->i_actualEngineer != 0) {
                $res[$j]->i_actualEngineer = $assign->findBySingleId($res[$j]->i_actualEngineer)->data; //
//                $res[$j]->i_actualEngineer = $res[$j]->i_actualEngineer->n_name_user . " " . $res[$j]->i_actualEngineer->n_last_name_user;
            } elseif ($res[$j]->i_actualEngineer == 0) {
                $res[$j]->i_actualEngineer = "<b>PENDIENTE POR ASIGNAR</b>";
            }
        }
        return $res;
    }

    public function runPrecheck() {
        try {
            $ticketModel = new TicketOnAirModel();
            $ticket = (new TicketOnAirModel())->where("k_id_onair", "=", $this->request->idOnAir)->first();
            $ticketModel->where("k_id_onair", "=", $this->request->idOnAir)
                    ->update([
                        "k_id_status_onair" => 78, //Precheck.
                        "d_precheck_init" => $ticket->d_created_at
            ]);
            $kpiDao = new Dao_kpi_model();
            //Se registra el KPI.
            $kpiDao->record($this->request->idOnAir);
            $this->json(new Response(EMessages::UPDATE));

            $ticketDao = new Dao_ticketOnair_model();

            $estadoSectores = $ticket->n_estado_sectores;
            //Se actualizan los sectores...
            $valid = new Validator();
            if ($valid->required(null, $this->request->n_json_sectores)) {
                $tempOnair = new TicketOnAirModel();
                $obj = ["n_json_sectores" => $this->request->n_json_sectores];
                if ($this->request->typeBlock == 1) {
                    $obj["n_sectoresbloqueados"] = $this->request->n_sectores_bloqueados;
                    $obj["n_sectoresdesbloqueados"] = DB::NULLED;
                    if ($estadoSectores != "BLOQUEADOS") {
                        $obj["n_estado_sectores"] = "BLOQUEADOS";
                        $obj["d_bloqueo"] = Hash::getDate();
                    }
                } else
                if ($this->request->typeBlock == 0) {
                    $obj["n_sectoresbloqueados"] = DB::NULLED;
                    $obj["n_sectoresdesbloqueados"] = $this->request->n_sectores_desbloqueados;
                    if ($estadoSectores != "DESBLOQUEADOS") {
                        $obj["n_estado_sectores"] = "DESBLOQUEADOS";
                        $obj["d_desbloqueo"] = Hash::getDate();
                    }
                }
                $tempOnair->where("k_id_onair", "=", $this->request->idOnAir)->update($obj);
            }

            $ticketDao->registerReportComment($this->request->idOnAir, $this->request->n_comentario_ing);
        } catch (DeplynException $ex) {
            $this->json($ex);
        }
    }

    public function doPrecheck() {
        $preparation = new Dao_preparationStage_model();
        $ticket = new Dao_ticketOnair_model();
        $precheck = new Dao_precheck_model();
        $response = $ticket->findByIdOnAir($this->request->idOnair);
        $ticketOnAir = $response->data;
        $this->request->k_id_onair = $this->request->idOnair;
        $this->request->k_id_user = $response->data->i_actualEngineer;
        $this->request->n_round = 1;
        $this->request->i_round = 1;
        $this->request->i_actualEngineer = 0;
        $this->request->d_precheck_init = 1;
        $this->request->k_id_ticket = $this->request->k_id_onair;
        //Cerramos el KPI...
        $kpiDao = new Dao_kpi_model();
        //Se registra el KPI.
        $kpiDao->record($ticketOnAir, false, true);

        $estadoSectores = $ticketOnAir->n_estado_sectores;
        $valid = new Validator();
        if ($valid->required(null, $this->request->jsonSectores)) {
            $tempOnair = new TicketOnAirModel();
            $obj = ["n_json_sectores" => $this->request->jsonSectores];
            if ($this->request->typeBlock == 1) {
                $obj["n_sectoresbloqueados"] = $this->request->sectoresBloqueados;
                $obj["n_sectoresdesbloqueados"] = DB::NULLED;
                if ($estadoSectores != "BLOQUEADOS") {
                    $obj["n_estado_sectores"] = "BLOQUEADOS";
                    $obj["d_bloqueo"] = Hash::getDate();
                }
            } else
            if ($this->request->typeBlock == 0) {
                $obj["n_sectoresbloqueados"] = DB::NULLED;
                $obj["n_sectoresdesbloqueados"] = $this->request->sectoresDesbloqueados;
                if ($estadoSectores != "DESBLOQUEADOS") {
                    $obj["n_estado_sectores"] = "DESBLOQUEADOS";
                    $obj["d_desbloqueo"] = Hash::getDate();
                }
            }
            $tempOnair->where("k_id_onair", "=", $this->request->idOnair)->update($obj);
        }

        $response1 = $ticket->updateEngTicket($this->request->idOnair, (($ticketOnAir->k_id_status_onair == 79) ? Auth::user()->k_id_user : 0))->data; //camilo
        //Sirve para veriificar si va para 12
        $requestProduction = null;
        $prorrogaHours = 0;

        //Se detecta si se desea hacer una prórroga para el precheck...
        if ($this->request->k_id_status_onair == 0) {
            $prorrogaHours = $this->request->prorrogaHours;
            //Actualizamos la fecha en la que se inició el precheck.
            $temp = new TicketOnAirModel();
            $temp->where("k_id_onair", "=", $this->request->k_id_onair)->update([
                "d_precheck_init" => Hash::getDate(),
                "i_prorroga_hours" => $prorrogaHours,
            ]);
        }
        //Se detecta si va para Stand By...
        if ($this->request->k_id_status_onair == 10) {
            $this->request->comment = $this->request->n_comentario_ing;
            $ticket->toStandBy($response->data, $this->request);
            $ticket->registerReportComment($this->request->k_id_onair, $this->request->comment);
            $this->json($response);
            return;
        }
        //Para producción.
        if ($this->request->k_id_status_onair >= 87) {
            $requestProduction = $this->request;
            $requestProduction->TO_PRODUCCTION = true;
            $comment = $this->request->n_comentario_ing;
            $tempComment = [[
            "comment" => $comment,
            "date" => Hash::getDate()
            ]];
            $commentEdit = json_encode($tempComment, true);
            $this->request->n_comentario = $commentEdit;
        }
        //Para 12h, 24h, 36 o para producción
        if ($this->request->k_id_status_onair == 81 || $this->request->k_id_status_onair >= 87 || $this->request->k_id_status_onair >= 82 || $this->request->k_id_status_onair >= 83) {
            $follow12h = new Dao_followUp12h_model();
            $onair12 = new Dao_onAir12h_model();
            $response = $follow12h->insert12hFollowUp($this->request);
            $this->request->k_id_follow_up_12h = $response->data->data;
            $this->request->d_start12h = Hash::getDateForTrack(TimerGlobal::TRACK);
            if ($this->request->k_id_status_onair >= 87) {
                $this->request->d_fin12h = Hash::getDate();
            }
            $response = $onair12->insertOnAir12($this->request);
            $this->request->d_finpre = Hash::getDate();
            $response = $preparation->updatePreparationStage($this->request)->data;
            $response1 = $ticket->updateStatusTicket($this->request->idOnair, $this->request->k_id_status_onair, $requestProduction)->data;
            $response1 = $ticket->updatePrecheckStatus($this->request->idOnair)->data; //camilo
            $response1 = $ticket->updateRoundTicket($this->request->idOnair, 1)->data; //camilo
            $repsonse2 = $precheck->updatePrecheckCom($this->request)->data; //camilo

            $comment = $this->request->n_comentario_ing;
            $tempComment = [[
            "comment" => $comment,
            "date" => Hash::getDate()
            ]];
            $commentEdit = json_encode($tempComment, true);
            $this->request->n_comentario = $commentEdit;
        }
        // si va para 24, 36 o para producción
        if ($this->request->k_id_status_onair == 82 || $this->request->k_id_status_onair >= 87 || $this->request->k_id_status_onair >= 83) {
            $follow24h = new Dao_followUp24h_model();
            $onair24 = new Dao_onAir24h_model();
            $response = $follow24h->insert24hFollowUp($this->request);
            $this->request->k_id_follow_up_24h = $response->data->data;
            $this->request->d_start24h = Hash::getDate();
            if ($this->request->k_id_status_onair >= 87) {
                $this->request->d_fin24h = Hash::getDate();
            }
            $response = $onair24->insertOnAir24($this->request);
            $this->request->d_finpre = Hash::getDate();
            $response = $preparation->updatePreparationStage($this->request)->data;
            $response1 = $ticket->updateStatusTicket($this->request->idOnair, $this->request->k_id_status_onair, $requestProduction)->data;
            $response1 = $ticket->updatePrecheckStatus($this->request->idOnair)->data; //camilo
            $response1 = $ticket->updateRoundTicket($this->request->idOnair, 1)->data; //camilo
            $repsonse2 = $precheck->updatePrecheckCom($this->request)->data; //camilo

            $comment = $this->request->n_comentario_ing;
            $tempComment = [[
            "comment" => $comment,
            "date" => Hash::getDate()
            ]];
            $commentEdit = json_encode($tempComment, true);
            $this->request->n_comentario = $commentEdit;
        }
        //si va para 36 o para producción
        if ($this->request->k_id_status_onair == 83 || $this->request->k_id_status_onair >= 87) {
            $follow36h = new Dao_followUp36h_model();
            $onair36 = new Dao_onAir36h_model();
            $response = $follow36h->insert36hFollowUp($this->request);
            $this->request->k_id_follow_up_36h = $response->data->data;
            $this->request->d_start36h = Hash::getDate();
            if ($this->request->k_id_status_onair >= 87) {
                $this->request->d_fin36h = Hash::getDate();
            }
            $response = $onair36->insertOnAir36($this->request);
            $this->request->d_finpre = Hash::getDate();
            $response = $preparation->updatePreparationStage($this->request)->data;
            $response1 = $ticket->updateStatusTicket($this->request->idOnair, $this->request->k_id_status_onair, $requestProduction)->data;
            $response1 = $ticket->updatePrecheckStatus($this->request->idOnair)->data; //camilo
            $response1 = $ticket->updateRoundTicket($this->request->idOnair, 1)->data; //camilo
            $repsonse2 = $precheck->updatePrecheckCom($this->request)->data; //camilo

            $comment = $this->request->n_comentario_ing;
            $tempComment = [[
            "comment" => $comment,
            "date" => Hash::getDate()
            ]];
            $commentEdit = json_encode($tempComment, true);
            $this->request->n_comentario = $commentEdit;
        }

        $ticket->registerReportComment($this->request->k_id_onair, $this->request->n_comentario_ing);
        $this->json($response);
        // $this->request->d_finpre = Hash::getDate();
        // $response = $preparation->updatePreparationStage($this->request)->data;
        // $response1 = $ticket->updatePrecheckStatus($this->request->idOnair)->data;//camilo
        // $response1 = $ticket->updateRoundTicket($this->request->idOnair, 1)->data;//camilo
        // $repsonse2 = $precheck->updatePrecheckCom($this->request)->data;//camilo
        // $this->json($response);
    }

    public function updateBasicTicket() {
        $response = new Response(EMessages::UPDATE);
        $request = $this->request;
        try {
            //Actualizamos el k_id_preparation del onair...
            $preparationModel = new PreparationStageModel();
            $preparationModel->where("k_id_preparation", "=", $request->k_id_preparation)->update([
                "n_btsipaddress" => $request->n_btsipaddress,
                "n_bcf_wbts_id" => $request->n_bcf_wbts_id,
                "n_bts_id" => $request->n_bts_id,
                "b_vistamm" => $request->b_vistamm,
                "n_controlador" => $request->n_controlador,
                "n_idcontrolador" => $request->n_idcontrolador
            ]);

            $ticket = (new TicketOnAirModel())->where("k_id_onair", "=", $this->request->idOnair)->first();
            $estadoSectores = $ticket->n_estado_sectores;
            //Se actualizan los sectores...
            $valid = new Validator();
            if ($valid->required(null, $this->request->jsonSectores)) {
                $tempOnair = new TicketOnAirModel();
                $obj = ["n_json_sectores" => $this->request->jsonSectores];
                if ($this->request->typeBlock == 1) {
                    $obj["n_sectoresbloqueados"] = $this->request->sectoresBloqueados;
                    $obj["n_sectoresdesbloqueados"] = DB::NULLED;
                    if ($estadoSectores != "BLOQUEADOS") {
                        $obj["d_bloqueo"] = Hash::getDate();
                        $obj["n_estado_sectores"] = "BLOQUEADOS";
                    }
                } else
                if ($this->request->typeBlock == 0) {
                    $obj["n_sectoresbloqueados"] = DB::NULLED;
                    $obj["n_sectoresdesbloqueados"] = $this->request->sectoresDesbloqueados;
                    if ($estadoSectores != "DESBLOQUEADOS") {
                        $obj["n_estado_sectores"] = "DESBLOQUEADOS";
                        $obj["d_desbloqueo"] = Hash::getDate();
                    }
                }
                $tempOnair->where("k_id_onair", "=", $this->request->idOnair)->update($obj);
            }

            $this->json($response);
        } catch (DeplynException $ex) {
            $this->json($ex);
        }
    }

}
