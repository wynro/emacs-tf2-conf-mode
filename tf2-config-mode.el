;;; tf2-config-mode.el --- TF2 Config files syntax highlighting

;; Copyright (C) 2016  Guillermo Robles <guillerobles1995@gmail.com>

;; Author: Guillermo Robles <guillerobles1995@gmail.com>
;; URL: https://github.com/wynro/emacs-tf2-config-mode
;; Keywords: languages
;; Version: 0.1

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Major mode for editing TF2 Configuration files

;;; Code:


(defconst tf2-config-font-lock-keywords
  ;; (concat "\\<" (regexp-opt '("alias" "cl_vote_ui_active_after_voting" "fov" "viewmodel_fov" "fov_desired" "tf_hud_target_id_alpha" "tf_hud_target_id_disable_floating_health" "tf_dingaling_pitchmaxdmg" "tf_dingaling_pitchmindmg" "hud_combattext_batching" "mat_phong" "exec" "bind" "cl_demoviewoverride" "cl_downloadfilter" "cl_drawhud" "cl_showfps" "demolist" "demoui" "demoui2" "disguise" "exit" "explode" "fps_max" "hidepanel" "hud_fastswitch" "impulse" "jpeg" "jpeg_quality" "kill" "mat_bumpmap" "mat_compressedtextures" "mat_dxlevel" "mat_picmip" "mat_queue_mode" "mat_specular" "mp_autoteambalance" "mp_decals" "mp_maxrounds" "mp_restartround" "mp_teams_unbalance_limit" "mp_timelimit" "mp_winlimit" "net_graph" "net_graphheight" "net_graphpos" "record demoname" "say" "say_team" "screenshot" "showmapinfo" "showscores" "stop" "sv_allowdownload" "sv_allowupload" "sv_alltalk" "sv_gravity" "sv_hltv" "sv_lan" "sv_password" "sv_pausable" "sv_voiceenable" "toggleconsole" "voice_menu_1" "voice_menu_2" "voice_menu_3" "voicemenu" "voicerecord") t) "\\>")
;; (concat "\\<" (regexp-opt '("tf_weapon_scattergun" "tf_weapon_handgun_scout_primary" "tf_weapon_soda_popper" "tf_weapon_pistol_scout" "tf_weapon_lunchbox_drink" "tf_weapon_jar_milk" "tf_weapon_handgun_scout_secondary" "tf_weapon_cleaver" "tf_weapon_bat" "tf_weapon_bat_wood" "tf_weapon_bat_fish" "tf_weapon_rocketlauncher" "tf_weapon_rocketlauncher_directhit" "tf_weapon_particle_cannon" "tf_weapon_shotgun_soldier" "tf_weapon_buff_item" "tf_weapon_raygun" "tf_weapon_shovel" "tf_weapon_katana" "tf_weapon_rocketlauncher_airstrike" "tf_weapon_flamethrower" "tf_weapon_shotgun_pyro" "tf_weapon_flaregun" "tf_weapon_fireaxe" "tf_weapon_grenadelauncher" "tf_weapon_pipebomblauncher" "tf_weapon_bottle" "tf_weapon_sword" "tf_weapon_stickbomb" "tf_weapon_katana" "tf_weapon_minigun" "tf_weapon_shotgun_hwg" "tf_weapon_lunchbox" "tf_weapon_fists" "tf_weapon_shotgun_primary" "tf_weapon_sentry_revenge" "tf_weapon_pistol" "tf_weapon_laser_pointer" "tf_weapon_mechanical_arm" "tf_weapon_wrench" "tf_weapon_robot_arm" "tf_weapon_pda_engineer_destroy" "tf_weapon_pda_engineer_build" "tf_weapon_syringegun_medic" "tf_weapon_crossbow" "tf_weapon_medigun" "tf_weapon_bonesaw" "tf_weapon_sniperrifle" "tf_weapon_compound_bow" "tf_weapon_sniperrifle_decap" "tf_weapon_smg" "tf_weapon_jar" "tf_weapon_club" "tf_weapon_sniperrifle_classic" "tf_weapon_revolver" "tf_weapon_knife" "tf_weapon_pda_spy") t) "\\>")
  (list
   '("\\\/\/.*" . font-lock-comment-face)
   '("\\<\\(alias\\|bind\\|cl_\\(?:d\\(?:emoviewoverride\\|ownloadfilter\\|rawhud\\)\\|showfps\\|vote_ui_active_after_voting\\)\\|d\\(?:emo\\(?:list\\|ui2?\\)\\|isguise\\)\\|ex\\(?:ec\\|it\\|plode\\)\\|f\\(?:ov\\(?:_desired\\)?\\|ps_max\\)\\|h\\(?:idepanel\\|ud_\\(?:combattext_batching\\|fastswitch\\)\\)\\|impulse\\|jpeg\\(?:_quality\\)?\\|kill\\|m\\(?:at_\\(?:bumpmap\\|compressedtextures\\|dxlevel\\|p\\(?:hong\\|icmip\\)\\|queue_mode\\|specular\\)\\|p_\\(?:autoteambalance\\|decals\\|maxrounds\\|restartround\\|\\(?:t\\(?:eams_unbalance_\\|ime\\)\\|win\\)limit\\)\\)\\|net_graph\\(?:height\\|pos\\)?\\|record demoname\\|s\\(?:ay\\(?:_team\\)?\\|creenshot\\|how\\(?:mapinfo\\|scores\\)\\|top\\|v_\\(?:all\\(?:ow\\(?:\\(?:down\\|up\\)load\\)\\|talk\\)\\|gravity\\|hltv\\|lan\\|pa\\(?:ssword\\|usable\\)\\|voiceenable\\)\\)\\|t\\(?:f_\\(?:dingaling_pitchm\\(?:\\(?:ax\\|in\\)dmg\\)\\|hud_target_id_\\(?:alpha\\|disable_floating_health\\)\\)\\|oggleconsole\\)\\|v\\(?:iewmodel_fov\\|oice\\(?:_menu_[123]\\|menu\\|record\\)\\)\\)\\>" . font-lock-builtin-face)
   '("\\<\\(tf_weapon_\\(?:b\\(?:at\\(?:_\\(?:fish\\|wood\\)\\)?\\|o\\(?:nesaw\\|ttle\\)\\|uff_item\\)\\|c\\(?:l\\(?:eaver\\|ub\\)\\|\\(?:ompound_\\|ross\\)bow\\)\\|f\\(?:i\\(?:reaxe\\|sts\\)\\|la\\(?:methrower\\|regun\\)\\)\\|grenadelauncher\\|handgun_scout_\\(?:\\(?:prim\\|second\\)ary\\)\\|jar\\(?:_milk\\)?\\|k\\(?:atana\\|nife\\)\\|l\\(?:aser_pointer\\|unchbox\\(?:_drink\\)?\\)\\|m\\(?:e\\(?:chanical_arm\\|digun\\)\\|inigun\\)\\|p\\(?:article_cannon\\|da_\\(?:engineer_\\(?:build\\|destroy\\)\\|spy\\)\\|i\\(?:pebomblauncher\\|stol\\(?:_scout\\)?\\)\\)\\|r\\(?:aygun\\|evolver\\|o\\(?:bot_arm\\|cketlauncher\\(?:_\\(?:airstrike\\|directhit\\)\\)?\\)\\)\\|s\\(?:cattergun\\|entry_revenge\\|ho\\(?:tgun_\\(?:hwg\\|p\\(?:rimary\\|yro\\)\\|soldier\\)\\|vel\\)\\|mg\\|niperrifle\\(?:_\\(?:classic\\|decap\\)\\)?\\|oda_popper\\|tickbomb\\|word\\|yringegun_medic\\)\\|wrench\\)\\)\\>" . font-lock-constant-face)
   )
  "Font lock keywords for TF2 Config Mode."
  )

 (defun tf2-config-indent-line ()
   "Indent current line of TF2 Configuration."
   (interactive)
   (indent-line-to 0))

(defvar tf2-config-mode-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?_ "w" table)
    table)
  "Syntax table to use in `tf2-config-mode' buffers.")

;;;###autoload
(define-derived-mode tf2-config-mode fundamental-mode "TF2 Config"
  "Major mode for editing TF2 configuration files."

  ;; Comment configuration
  (setq-local comment-start "// ")
  (setq-local comment-start-skip "//+ *")
  (setq-local comment-use-syntax t)
  (setq-local comment-end "")
  (setq-local comment-auto-fill-only-comments t)

  ;; Syntax highlight
  (set (make-local-variable 'font-lock-defaults) '(tf2-config-font-lock-keywords))

  ;; No indentation
  (set (make-local-variable 'indent-line-function) 'tf2-config-indent-line)
  )

(provide 'tf2-config-mode)
;;; tf2-config-mode.el ends here
