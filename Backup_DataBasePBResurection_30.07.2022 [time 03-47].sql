toc.dat                                                                                             0000600 0004000 0002000 00000333113 14271176511 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       %    +                z            pbresurection    12.2    12.2 G   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    147704    pbresurection    DATABASE     �   CREATE DATABASE pbresurection WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE pbresurection;
                postgres    false         �            1259    147705    account_id_seq    SEQUENCE     w   CREATE SEQUENCE public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.account_id_seq;
       public          postgres    false                    1259    147827    accounts    TABLE     �  CREATE TABLE public.accounts (
    login character varying DEFAULT ''::character varying NOT NULL,
    password character varying DEFAULT ''::character varying NOT NULL,
    player_id bigint DEFAULT nextval('public.account_id_seq'::regclass) NOT NULL,
    player_name character varying DEFAULT ''::character varying NOT NULL,
    name_color integer DEFAULT 0 NOT NULL,
    clan_id integer DEFAULT 0 NOT NULL,
    rank integer DEFAULT 31 NOT NULL,
    gp integer DEFAULT 250000 NOT NULL,
    exp integer DEFAULT 1690000 NOT NULL,
    pc_cafe integer DEFAULT 1 NOT NULL,
    fights integer DEFAULT 0 NOT NULL,
    fights_win integer DEFAULT 0 NOT NULL,
    fights_lost integer DEFAULT 0 NOT NULL,
    kills_count integer DEFAULT 0 NOT NULL,
    deaths_count integer DEFAULT 0 NOT NULL,
    headshots_count integer DEFAULT 0 NOT NULL,
    escapes integer DEFAULT 0 NOT NULL,
    access_level integer DEFAULT 0 NOT NULL,
    lastip character varying(32) DEFAULT 0 NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    last_rankup_date bigint DEFAULT 1010000 NOT NULL,
    money integer DEFAULT 10000 NOT NULL,
    online boolean DEFAULT false NOT NULL,
    weapon_primary integer DEFAULT 100003004 NOT NULL,
    weapon_secondary integer DEFAULT 601002003 NOT NULL,
    weapon_melee integer DEFAULT 702001001 NOT NULL,
    weapon_thrown_normal integer DEFAULT 803007001 NOT NULL,
    weapon_thrown_special integer DEFAULT 904007002 NOT NULL,
    char_red integer DEFAULT 1001001005 NOT NULL,
    char_blue integer DEFAULT 1001002006 NOT NULL,
    char_helmet integer DEFAULT 1102003001 NOT NULL,
    char_dino integer DEFAULT 1006003041 NOT NULL,
    char_beret integer DEFAULT 0 NOT NULL,
    brooch integer DEFAULT 10 NOT NULL,
    insignia integer DEFAULT 124 NOT NULL,
    medal integer DEFAULT 403 NOT NULL,
    blue_order integer DEFAULT 147 NOT NULL,
    mission_id1 integer DEFAULT 0 NOT NULL,
    clanaccess integer DEFAULT 0 NOT NULL,
    clandate integer DEFAULT 0 NOT NULL,
    effects bigint DEFAULT 0 NOT NULL,
    fights_draw integer DEFAULT 0 NOT NULL,
    mission_id2 integer DEFAULT 0 NOT NULL,
    mission_id3 integer DEFAULT 0 NOT NULL,
    totalkills_count integer DEFAULT 0 NOT NULL,
    totalfights_count integer DEFAULT 0 NOT NULL,
    status bigint DEFAULT '4294967295'::bigint NOT NULL,
    last_login bigint DEFAULT 0 NOT NULL,
    clan_game_pt integer DEFAULT 0 NOT NULL,
    clan_wins_pt integer DEFAULT 0 NOT NULL,
    last_mac macaddr DEFAULT '00:00:00:00:00:00'::macaddr NOT NULL,
    ban_obj_id bigint DEFAULT 0 NOT NULL,
    kuyraicoin integer DEFAULT 1000 NOT NULL,
    hint_question text NOT NULL,
    hint_answer text NOT NULL,
    date_registered character varying,
    email_verification character varying(32) DEFAULT 0 NOT NULL,
    battlepass_type integer DEFAULT 0 NOT NULL,
    facebook character varying(255),
    twitter character varying(255),
    instagram character varying(255),
    github character varying(255)
);
    DROP TABLE public.accounts;
       public         heap    postgres    false    202         �            1259    147707    api_keys_id_seq    SEQUENCE     x   CREATE SEQUENCE public.api_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.api_keys_id_seq;
       public          postgres    false         �            1259    147709    api_keys_limit_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.api_keys_limit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.api_keys_limit_id_seq;
       public          postgres    false         �            1259    147711    api_keys_logs_id_seq    SEQUENCE     }   CREATE SEQUENCE public.api_keys_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.api_keys_logs_id_seq;
       public          postgres    false         �            1259    147713    auto_ban_seq    SEQUENCE     u   CREATE SEQUENCE public.auto_ban_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.auto_ban_seq;
       public          postgres    false         �            1259    147715    ban_seq    SEQUENCE     p   CREATE SEQUENCE public.ban_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.ban_seq;
       public          postgres    false                    1259    147888    ban_history    TABLE     Y  CREATE TABLE public.ban_history (
    object_id bigint DEFAULT nextval('public.ban_seq'::regclass) NOT NULL,
    provider_id bigint DEFAULT 0 NOT NULL,
    type character varying(255) DEFAULT ''::character varying NOT NULL,
    value character varying(255) DEFAULT ''::character varying NOT NULL,
    reason character varying(255) DEFAULT ''::character varying NOT NULL,
    start_date timestamp(6) without time zone DEFAULT '2000-01-01 00:00:00'::timestamp without time zone NOT NULL,
    end_date timestamp(6) without time zone DEFAULT '2000-01-01 00:00:00'::timestamp without time zone NOT NULL
);
    DROP TABLE public.ban_history;
       public         heap    postgres    false    207         �            1259    147717    captcha_id_seq    SEQUENCE     w   CREATE SEQUENCE public.captcha_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.captcha_id_seq;
       public          postgres    false         �            1259    147719    channels_id_seq    SEQUENCE     x   CREATE SEQUENCE public.channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.channels_id_seq;
       public          postgres    false         �            1259    147721    check_event_seq    SEQUENCE     x   CREATE SEQUENCE public.check_event_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.check_event_seq;
       public          postgres    false         �            1259    147723    check_user_attendance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.check_user_attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.check_user_attendance_id_seq;
       public          postgres    false         	           1259    147901    check_user_attendance    TABLE     _  CREATE TABLE public.check_user_attendance (
    id integer DEFAULT nextval('public.check_user_attendance_id_seq'::regclass) NOT NULL,
    event_id integer,
    player_id integer,
    item_reward character varying(255),
    item_count integer,
    date_claimed character varying(255) DEFAULT nextval('public.check_user_attendance_id_seq'::regclass)
);
 )   DROP TABLE public.check_user_attendance;
       public         heap    postgres    false    211    211         �            1259    147725    check_user_itemcode_seq    SEQUENCE     �   CREATE SEQUENCE public.check_user_itemcode_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.check_user_itemcode_seq;
       public          postgres    false         
           1259    147909    check_user_itemcode    TABLE     �   CREATE TABLE public.check_user_itemcode (
    id integer DEFAULT nextval('public.check_user_itemcode_seq'::regclass),
    uid integer,
    item_code character varying(255),
    username character varying(255),
    date_redeemed character varying(255)
);
 '   DROP TABLE public.check_user_itemcode;
       public         heap    postgres    false    212         �            1259    147727    check_user_voucher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.check_user_voucher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.check_user_voucher_id_seq;
       public          postgres    false                    1259    147916    check_user_voucher    TABLE     �   CREATE TABLE public.check_user_voucher (
    id integer DEFAULT nextval('public.check_user_voucher_id_seq'::regclass) NOT NULL,
    uid integer,
    voucher character varying(255),
    date_claimed character varying(255)
);
 &   DROP TABLE public.check_user_voucher;
       public         heap    postgres    false    213         �            1259    147729    clan_seq    SEQUENCE     q   CREATE SEQUENCE public.clan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.clan_seq;
       public          postgres    false                    1259    147923 	   clan_data    TABLE     ,  CREATE TABLE public.clan_data (
    clan_id integer DEFAULT nextval('public.clan_seq'::regclass) NOT NULL,
    clan_rank integer DEFAULT 0 NOT NULL,
    clan_name character varying DEFAULT ''::character varying NOT NULL,
    owner_id bigint DEFAULT 0 NOT NULL,
    logo bigint DEFAULT 0 NOT NULL,
    color integer DEFAULT 0 NOT NULL,
    clan_info character varying DEFAULT ''::character varying NOT NULL,
    clan_news character varying DEFAULT ''::character varying NOT NULL,
    create_date integer DEFAULT 0 NOT NULL,
    autoridade integer DEFAULT 0 NOT NULL,
    limite_rank integer DEFAULT 0 NOT NULL,
    limite_idade integer DEFAULT 0 NOT NULL,
    limite_idade2 integer DEFAULT 0 NOT NULL,
    partidas integer DEFAULT 0 NOT NULL,
    vitorias integer DEFAULT 0 NOT NULL,
    derrotas integer DEFAULT 0 NOT NULL,
    pontos real DEFAULT 1000 NOT NULL,
    max_players integer DEFAULT 50 NOT NULL,
    clan_exp integer DEFAULT 0 NOT NULL,
    best_exp character varying DEFAULT ''::character varying NOT NULL,
    best_participation character varying DEFAULT ''::character varying NOT NULL,
    best_wins character varying DEFAULT ''::character varying NOT NULL,
    best_kills character varying DEFAULT ''::character varying NOT NULL,
    best_headshot character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.clan_data;
       public         heap    postgres    false    214                    1259    147953    clan_invites    TABLE     �   CREATE TABLE public.clan_invites (
    clan_id integer DEFAULT 0 NOT NULL,
    player_id bigint DEFAULT 0 NOT NULL,
    dateinvite integer DEFAULT 0 NOT NULL,
    text character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.clan_invites;
       public         heap    postgres    false         �            1259    147731    event_attendance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.event_attendance_id_seq;
       public          postgres    false                    1259    147963    events_attendance    TABLE     b  CREATE TABLE public.events_attendance (
    id integer DEFAULT nextval('public.event_attendance_id_seq'::regclass) NOT NULL,
    day integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255) NOT NULL,
    item_count character varying(255) NOT NULL,
    total_claim integer NOT NULL,
    date character varying(255) NOT NULL
);
 %   DROP TABLE public.events_attendance;
       public         heap    postgres    false    215                    1259    147970    events_login    TABLE     �   CREATE TABLE public.events_login (
    start_date bigint,
    end_date bigint,
    reward_id integer,
    reward_count integer
);
     DROP TABLE public.events_login;
       public         heap    postgres    false         �            1259    147733    events_login_id_seq    SEQUENCE     |   CREATE SEQUENCE public.events_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.events_login_id_seq;
       public          postgres    false                    1259    147973    events_mapbonus    TABLE     "  CREATE TABLE public.events_mapbonus (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    map_id integer DEFAULT 0 NOT NULL,
    stage_type integer DEFAULT 0 NOT NULL,
    percent_xp integer DEFAULT 0 NOT NULL,
    percent_gp integer DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.events_mapbonus;
       public         heap    postgres    false                    1259    147982    events_playtime    TABLE     �  CREATE TABLE public.events_playtime (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    title character varying(30) DEFAULT ''::character varying NOT NULL,
    seconds_target bigint DEFAULT 1000 NOT NULL,
    good_reward1 integer DEFAULT 0 NOT NULL,
    good_reward2 integer DEFAULT 0 NOT NULL,
    good_count1 integer DEFAULT 0 NOT NULL,
    good_count2 integer DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.events_playtime;
       public         heap    postgres    false                    1259    147993    events_quest    TABLE     w   CREATE TABLE public.events_quest (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL
);
     DROP TABLE public.events_quest;
       public         heap    postgres    false                    1259    147998    events_rankup    TABLE     �   CREATE TABLE public.events_rankup (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    percent_xp integer DEFAULT 0 NOT NULL,
    percent_gp integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.events_rankup;
       public         heap    postgres    false                    1259    148005    events_register    TABLE       CREATE TABLE public.events_register (
    id character varying(255),
    item_id character varying(255),
    item_name character varying(255),
    item_category character varying(255),
    item_count character varying(255),
    stock integer,
    is_active boolean
);
 #   DROP TABLE public.events_register;
       public         heap    postgres    false                    1259    148011    events_visit    TABLE       CREATE TABLE public.events_visit (
    event_id integer DEFAULT nextval('public.check_event_seq'::regclass) NOT NULL,
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    title character varying(59) DEFAULT ''::character varying NOT NULL,
    checks integer DEFAULT 7 NOT NULL,
    goods1 character varying NOT NULL,
    counts1 character varying NOT NULL,
    goods2 character varying DEFAULT ''::character varying NOT NULL,
    counts2 character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.events_visit;
       public         heap    postgres    false    210                    1259    148024    events_xmas    TABLE     �   CREATE TABLE public.events_xmas (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    reward_id integer NOT NULL,
    reward_count integer NOT NULL
);
    DROP TABLE public.events_xmas;
       public         heap    postgres    false                    1259    148029    friends    TABLE     �   CREATE TABLE public.friends (
    owner_id bigint DEFAULT 0 NOT NULL,
    friend_id bigint DEFAULT 0 NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    removed boolean DEFAULT false NOT NULL
);
    DROP TABLE public.friends;
       public         heap    postgres    false         �            1259    147735    gameservers_id_seq    SEQUENCE     {   CREATE SEQUENCE public.gameservers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.gameservers_id_seq;
       public          postgres    false         �            1259    147737    gift_id_seq    SEQUENCE     t   CREATE SEQUENCE public.gift_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.gift_id_seq;
       public          postgres    false                    1259    148036    info_basic_items    TABLE     �   CREATE TABLE public.info_basic_items (
    acquisition integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255) DEFAULT ''::character varying NOT NULL,
    item_count integer NOT NULL,
    item_equip integer NOT NULL
);
 $   DROP TABLE public.info_basic_items;
       public         heap    postgres    false                    1259    148040    info_channels    TABLE     �   CREATE TABLE public.info_channels (
    server_id integer DEFAULT 0 NOT NULL,
    channel_id integer DEFAULT 0 NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    announce character varying DEFAULT ''::character varying NOT NULL
);
 !   DROP TABLE public.info_channels;
       public         heap    postgres    false                    1259    148050    info_cupons_flags    TABLE     i   CREATE TABLE public.info_cupons_flags (
    item_id integer NOT NULL,
    effect_flag bigint NOT NULL
);
 %   DROP TABLE public.info_cupons_flags;
       public         heap    postgres    false                    1259    148053    info_gameservers    TABLE       CREATE TABLE public.info_gameservers (
    id integer NOT NULL,
    state integer NOT NULL,
    type integer NOT NULL,
    ip character varying(255) DEFAULT ''::character varying NOT NULL,
    port integer NOT NULL,
    sync_port integer NOT NULL,
    max_players integer NOT NULL
);
 $   DROP TABLE public.info_gameservers;
       public         heap    postgres    false                    1259    148057    info_login_configs    TABLE     �  CREATE TABLE public.info_login_configs (
    config_id integer DEFAULT 0 NOT NULL,
    "onlyGM" boolean DEFAULT false NOT NULL,
    missions boolean DEFAULT true NOT NULL,
    "UserFileList" character varying(32) DEFAULT 0 NOT NULL,
    "Version" character varying(8) DEFAULT 0 NOT NULL,
    "GiftSystem" boolean DEFAULT false NOT NULL,
    "ExitURL" character varying(255) DEFAULT ''::character varying NOT NULL
);
 &   DROP TABLE public.info_login_configs;
       public         heap    postgres    false                    1259    148067    info_missions    TABLE     �   CREATE TABLE public.info_missions (
    mission_id integer DEFAULT 0 NOT NULL,
    price integer DEFAULT 0 NOT NULL,
    enable boolean DEFAULT false NOT NULL
);
 !   DROP TABLE public.info_missions;
       public         heap    postgres    false                    1259    148073    info_rank_awards    TABLE     �   CREATE TABLE public.info_rank_awards (
    rank_id integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255) DEFAULT ''::character varying NOT NULL,
    item_count integer NOT NULL,
    item_equip integer NOT NULL
);
 $   DROP TABLE public.info_rank_awards;
       public         heap    postgres    false         �            1259    147739    ipsystem_id_seq    SEQUENCE     x   CREATE SEQUENCE public.ipsystem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ipsystem_id_seq;
       public          postgres    false         �            1259    147741    item_code_id_seq    SEQUENCE     y   CREATE SEQUENCE public.item_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.item_code_id_seq;
       public          postgres    false                    1259    148077 	   item_code    TABLE     �  CREATE TABLE public.item_code (
    id integer DEFAULT nextval('public.item_code_id_seq'::regclass) NOT NULL,
    item_id character varying(32),
    item_name character varying(255),
    item_count character varying(255),
    item_code character varying(255),
    cash character varying(32),
    type character varying(255),
    qty integer,
    valid_date character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
    DROP TABLE public.item_code;
       public         heap    postgres    false    220                     1259    148084    item_goods_sets    TABLE     �   CREATE TABLE public.item_goods_sets (
    set_id integer NOT NULL,
    set_name character varying(255),
    visible boolean DEFAULT true
);
 #   DROP TABLE public.item_goods_sets;
       public         heap    postgres    false         !           1259    148088    item_goods_sets_items    TABLE     �   CREATE TABLE public.item_goods_sets_items (
    set_id integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255),
    item_consume integer,
    item_count integer,
    price_money integer,
    price_points integer
);
 )   DROP TABLE public.item_goods_sets_items;
       public         heap    postgres    false         �            1259    147743    item_voucher_id_seq    SEQUENCE     |   CREATE SEQUENCE public.item_voucher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.item_voucher_id_seq;
       public          postgres    false         "           1259    148091    item_voucher    TABLE     1  CREATE TABLE public.item_voucher (
    id integer DEFAULT nextval('public.item_voucher_id_seq'::regclass) NOT NULL,
    voucher_item character varying(255),
    voucher_cash character varying(255),
    voucher_webcoin character varying(255),
    voucher_code character varying(255),
    active boolean
);
     DROP TABLE public.item_voucher;
       public         heap    postgres    false    221         �            1259    147745    items_id_seq    SEQUENCE     u   CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          postgres    false         �            1259    147747    jogador_amigo_seq    SEQUENCE     z   CREATE SEQUENCE public.jogador_amigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.jogador_amigo_seq;
       public          postgres    false         �            1259    147749    jogador_inventario_seq    SEQUENCE        CREATE SEQUENCE public.jogador_inventario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.jogador_inventario_seq;
       public          postgres    false         �            1259    147751    jogador_mensagem_seq    SEQUENCE     }   CREATE SEQUENCE public.jogador_mensagem_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.jogador_mensagem_seq;
       public          postgres    false         �            1259    147753    launcher_launcherkey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.launcher_launcherkey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.launcher_launcherkey_id_seq;
       public          postgres    false         #           1259    148098    launcher_launcherkey    TABLE     �   CREATE TABLE public.launcher_launcherkey (
    id integer DEFAULT nextval('public.launcher_launcherkey_id_seq'::regclass) NOT NULL,
    key integer,
    status integer
);
 (   DROP TABLE public.launcher_launcherkey;
       public         heap    postgres    false    226         �            1259    147755    launcher_loghistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.launcher_loghistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.launcher_loghistory_id_seq;
       public          postgres    false         $           1259    148102    launcher_loghistory    TABLE     �   CREATE TABLE public.launcher_loghistory (
    id integer DEFAULT nextval('public.launcher_loghistory_id_seq'::regclass) NOT NULL,
    ip_address character varying(255),
    date_created character varying(255)
);
 '   DROP TABLE public.launcher_loghistory;
       public         heap    postgres    false    227         �            1259    147757    launcher_version_control_id_seq    SEQUENCE     �   CREATE SEQUENCE public.launcher_version_control_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.launcher_version_control_id_seq;
       public          postgres    false         %           1259    148109    launcher_version_control    TABLE     q  CREATE TABLE public.launcher_version_control (
    id integer DEFAULT nextval('public.launcher_version_control_id_seq'::regclass) NOT NULL,
    ip_address character varying(255),
    hwid character varying(255),
    current_patch_version integer,
    current_launcher_version integer,
    date_created character varying(255),
    date_updated character varying(255)
);
 ,   DROP TABLE public.launcher_version_control;
       public         heap    postgres    false    228         �            1259    147759    loja_seq    SEQUENCE     q   CREATE SEQUENCE public.loja_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.loja_seq;
       public          postgres    false         �            1259    147761    message_id_seq    SEQUENCE     w   CREATE SEQUENCE public.message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.message_id_seq;
       public          postgres    false         &           1259    148116    nick_history    TABLE     [  CREATE TABLE public.nick_history (
    player_id bigint DEFAULT 0 NOT NULL,
    from_nick character varying(255) DEFAULT ''::character varying NOT NULL,
    to_nick character varying(255) DEFAULT ''::character varying NOT NULL,
    change_date bigint DEFAULT 0 NOT NULL,
    motive character varying(255) DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.nick_history;
       public         heap    postgres    false         '           1259    148127    player_bonus    TABLE     @  CREATE TABLE public.player_bonus (
    player_id bigint DEFAULT 0 NOT NULL,
    bonuses integer DEFAULT 0 NOT NULL,
    sightcolor integer DEFAULT 4 NOT NULL,
    freepass integer DEFAULT 0 NOT NULL,
    fakerank integer DEFAULT 55 NOT NULL,
    fakenick character varying(255) DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.player_bonus;
       public         heap    postgres    false         �            1259    147763    player_characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.player_characters_id_seq;
       public          postgres    false         (           1259    148136    player_configs    TABLE     �  CREATE TABLE public.player_configs (
    owner_id bigint DEFAULT 0 NOT NULL,
    config integer DEFAULT 55 NOT NULL,
    sangue integer DEFAULT 1 NOT NULL,
    mira integer DEFAULT 0 NOT NULL,
    mao integer DEFAULT 0 NOT NULL,
    audio1 integer DEFAULT 100 NOT NULL,
    audio2 integer DEFAULT 60 NOT NULL,
    audio_enable integer DEFAULT 7 NOT NULL,
    sensibilidade integer DEFAULT 50 NOT NULL,
    visao integer DEFAULT 70 NOT NULL,
    mouse_invertido integer DEFAULT 0 NOT NULL,
    msgconvite integer DEFAULT 0 NOT NULL,
    chatsussurro integer DEFAULT 0 NOT NULL,
    macro integer DEFAULT 31 NOT NULL,
    macro_1 character varying DEFAULT ''::character varying NOT NULL,
    macro_2 character varying DEFAULT ''::character varying NOT NULL,
    macro_3 character varying DEFAULT ''::character varying NOT NULL,
    macro_4 character varying DEFAULT ''::character varying NOT NULL,
    macro_5 character varying DEFAULT ''::character varying NOT NULL,
    keys bytea DEFAULT '\x'::bytea NOT NULL
);
 "   DROP TABLE public.player_configs;
       public         heap    postgres    false         �            1259    147765    player_eqipment_id_seq    SEQUENCE        CREATE SEQUENCE public.player_eqipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.player_eqipment_id_seq;
       public          postgres    false         )           1259    148162    player_events    TABLE     }  CREATE TABLE public.player_events (
    player_id bigint DEFAULT 0 NOT NULL,
    last_visit_event_id integer DEFAULT 0 NOT NULL,
    last_visit_sequence1 integer DEFAULT 0 NOT NULL,
    last_visit_sequence2 integer DEFAULT 0 NOT NULL,
    next_visit_date integer DEFAULT 0 NOT NULL,
    last_xmas_reward_date bigint DEFAULT 0 NOT NULL,
    last_playtime_date bigint DEFAULT 0 NOT NULL,
    last_playtime_value integer DEFAULT 0 NOT NULL,
    last_playtime_finish integer DEFAULT 0 NOT NULL,
    last_login_date bigint DEFAULT 0 NOT NULL,
    last_quest_date bigint DEFAULT 0 NOT NULL,
    last_quest_finish integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.player_events;
       public         heap    postgres    false         �            1259    147767 $   player_friends_player_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_friends_player_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.player_friends_player_account_id_seq;
       public          postgres    false         *           1259    148177    player_items    TABLE     �  CREATE TABLE public.player_items (
    object_id bigint DEFAULT nextval('public.items_id_seq'::regclass) NOT NULL,
    owner_id bigint DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    count bigint DEFAULT 0 NOT NULL,
    category integer DEFAULT 0 NOT NULL,
    equip integer DEFAULT 0 NOT NULL
);
     DROP TABLE public.player_items;
       public         heap    postgres    false    222         +           1259    148190    player_messages    TABLE       CREATE TABLE public.player_messages (
    object_id integer DEFAULT nextval('public.message_id_seq'::regclass) NOT NULL,
    owner_id bigint DEFAULT 0 NOT NULL,
    sender_id bigint DEFAULT 0 NOT NULL,
    clan_id integer DEFAULT 0 NOT NULL,
    sender_name character varying(255) DEFAULT ''::character varying NOT NULL,
    text character varying(255) DEFAULT ''::character varying NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    state integer DEFAULT 1 NOT NULL,
    expire bigint DEFAULT 0 NOT NULL,
    cb integer DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.player_messages;
       public         heap    postgres    false    230         ,           1259    148206    player_missions    TABLE     �  CREATE TABLE public.player_missions (
    owner_id bigint DEFAULT 0 NOT NULL,
    actual_mission integer DEFAULT 0 NOT NULL,
    card1 integer DEFAULT 0 NOT NULL,
    card2 integer DEFAULT 0 NOT NULL,
    card3 integer DEFAULT 0 NOT NULL,
    card4 integer DEFAULT 0 NOT NULL,
    mission1 bytea DEFAULT '\x'::bytea NOT NULL,
    mission2 bytea DEFAULT '\x'::bytea NOT NULL,
    mission3 bytea DEFAULT '\x'::bytea NOT NULL,
    mission4 bytea DEFAULT '\x'::bytea NOT NULL
);
 #   DROP TABLE public.player_missions;
       public         heap    postgres    false         -           1259    148222    player_titles    TABLE     -  CREATE TABLE public.player_titles (
    owner_id bigint DEFAULT 0 NOT NULL,
    titleequiped1 integer DEFAULT 0 NOT NULL,
    titleequiped2 integer DEFAULT 0 NOT NULL,
    titleequiped3 integer DEFAULT 0 NOT NULL,
    titleflags bigint DEFAULT 0 NOT NULL,
    titleslots integer DEFAULT 1 NOT NULL
);
 !   DROP TABLE public.player_titles;
       public         heap    postgres    false         �            1259    147769    player_topups_seq    SEQUENCE     z   CREATE SEQUENCE public.player_topups_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.player_topups_seq;
       public          postgres    false         �            1259    147771    players_id_seq    SEQUENCE     w   CREATE SEQUENCE public.players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.players_id_seq;
       public          postgres    false         �            1259    147773    server_license_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.server_license_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.server_license_id_seq;
       public          postgres    false         F           1259    148492    shop    TABLE     #  CREATE TABLE public.shop (
    good_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    price_gold integer DEFAULT 0 NOT NULL,
    price_cash integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    buy_type integer DEFAULT 0 NOT NULL,
    buy_type2 integer DEFAULT 0 NOT NULL,
    buy_type3 integer DEFAULT 0 NOT NULL,
    tag integer DEFAULT 0 NOT NULL,
    title integer DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.shop;
       public         heap    postgres    false         �           0    0    COLUMN shop.good_id    COMMENT     �   COMMENT ON COLUMN public.shop.good_id IS 'id товара из игры
Примечание: id генерируется клиентом или где-то хранится. Пока неизвестно';
          public          postgres    false    326         �           0    0    COLUMN shop.item_id    COMMENT     �   COMMENT ON COLUMN public.shop.item_id IS 'id товара из игры
Примечание: id генерируется клиентом или где-то хранится. Пока неизвестно';
          public          postgres    false    326         �           0    0    COLUMN shop.item_name    COMMENT     T   COMMENT ON COLUMN public.shop.item_name IS 'имя товара в таблице';
          public          postgres    false    326         �           0    0    COLUMN shop.price_gold    COMMENT     U   COMMENT ON COLUMN public.shop.price_gold IS 'цена за игровые очки';
          public          postgres    false    326         �           0    0    COLUMN shop.price_cash    COMMENT     W   COMMENT ON COLUMN public.shop.price_cash IS 'цена за игровой донат';
          public          postgres    false    326         �           0    0    COLUMN shop.count    COMMENT     �  COMMENT ON COLUMN public.shop.count IS 'Количество для покупки (Если указать price_cash и price_gold при buy_type [1,2,3], будет возможность выбора типа покупки)
Дни - Если buy_type = 2 то расчитывается как Дата, то есть 1 день равен 86400 секундам(count). Если надо расчитать покупку по дням то (86400 * кол дней)
Штуки - 1 к 1 в отношение count. 1 штука = 1 count

Максимальный период = 9588 дней
Максимальное количество = 2100000000 штук';
          public          postgres    false    326         �           0    0    COLUMN shop.buy_type    COMMENT     h   COMMENT ON COLUMN public.shop.buy_type IS '1 - штуки
2 - период(дата)
3 - вечное';
          public          postgres    false    326         �           0    0    COLUMN shop.buy_type2    COMMENT     b   COMMENT ON COLUMN public.shop.buy_type2 IS 'не понятно для чего это поле';
          public          postgres    false    326         �           0    0    COLUMN shop.buy_type3    COMMENT     b   COMMENT ON COLUMN public.shop.buy_type3 IS 'не понятно для чего это поле';
          public          postgres    false    326         �           0    0    COLUMN shop.tag    COMMENT     =  COMMENT ON COLUMN public.shop.tag IS 'Приоритет отображения в таблице
0 - обычное (без бирки)
1 - новое (бирка NEW)
2 - горячее (бирка HOT)
3 - ивентовое (бирка EVENT)
4 - неизвестно
5 - распрадажа (бирка SALE)';
          public          postgres    false    326         �           0    0    COLUMN shop.title    COMMENT     �   COMMENT ON COLUMN public.shop.title IS 'Требования к покупке. 
номер title = порядковому номеру звания
';
          public          postgres    false    326         �           0    0    COLUMN shop.visibility    COMMENT     �   COMMENT ON COLUMN public.shop.visibility IS '2 - скрыть с продажи в магазине
3 - это отображение как вечный';
          public          postgres    false    326         .           1259    148249    shop_set    TABLE     '  CREATE TABLE public.shop_set (
    good_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    price_gold integer DEFAULT 0 NOT NULL,
    price_cash integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    buy_type integer DEFAULT 0 NOT NULL,
    buy_type2 integer DEFAULT 0 NOT NULL,
    buy_type3 integer DEFAULT 0 NOT NULL,
    tag integer DEFAULT 0 NOT NULL,
    title integer DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.shop_set;
       public         heap    postgres    false         G           1259    148516    shopunbuild    TABLE     *  CREATE TABLE public.shopunbuild (
    good_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    price_gold integer DEFAULT 0 NOT NULL,
    price_cash integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    buy_type integer DEFAULT 0 NOT NULL,
    buy_type2 integer DEFAULT 0 NOT NULL,
    buy_type3 integer DEFAULT 0 NOT NULL,
    tag integer DEFAULT 0 NOT NULL,
    title integer DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.shopunbuild;
       public         heap    postgres    false         �           0    0    COLUMN shopunbuild.good_id    COMMENT     �   COMMENT ON COLUMN public.shopunbuild.good_id IS 'уникальный id по таблице (порядковый номер записи)';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.item_id    COMMENT     �   COMMENT ON COLUMN public.shopunbuild.item_id IS 'id товара из игры
Примечание: id генерируется клиентом или где-то хранится. Пока неизвестно';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.item_name    COMMENT     [   COMMENT ON COLUMN public.shopunbuild.item_name IS 'имя товара в таблице';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.price_gold    COMMENT     \   COMMENT ON COLUMN public.shopunbuild.price_gold IS 'цена за игровые очки';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.price_cash    COMMENT     ^   COMMENT ON COLUMN public.shopunbuild.price_cash IS 'цена за игровой донат';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.count    COMMENT     �  COMMENT ON COLUMN public.shopunbuild.count IS 'Количество для покупки (Если указать price_cash и price_gold при buy_type [1,2,3], будет возможность выбора типа покупки)
Дни - Если buy_type = 2 то расчитывается как Дата, то есть 1 день равен 86400 секундам(count). Если надо расчитать покупку по дням то (86400 * кол дней)
Штуки - 1 к 1 в отношение count. 1 штука = 1 count

Максимальный период = 9588 дней
Максимальное количество = 2100000000 штук';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.buy_type    COMMENT     q   COMMENT ON COLUMN public.shopunbuild.buy_type IS '1 - штуки
2 - период(дата)
3 - вечное';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.buy_type2    COMMENT     i   COMMENT ON COLUMN public.shopunbuild.buy_type2 IS 'не понятно для чего это поле';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.buy_type3    COMMENT     i   COMMENT ON COLUMN public.shopunbuild.buy_type3 IS 'не понятно для чего это поле';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.tag    COMMENT       COMMENT ON COLUMN public.shopunbuild.tag IS 'Приоритет отображения в таблице
0 - обычное (без бирки)
1 - новое (бирка NEW)
2 - горячее (бирка HOT)
3 - ивентовое (бирка EVENT)';
          public          postgres    false    327         �           0    0    COLUMN shopunbuild.title    COMMENT     �   COMMENT ON COLUMN public.shopunbuild.title IS 'Требования к покупке.
номер title = порядковому номеру звания
';
          public          postgres    false    327         �            1259    147775    storage_seq    SEQUENCE     t   CREATE SEQUENCE public.storage_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.storage_seq;
       public          postgres    false         �            1259    147777    templates_id_seq    SEQUENCE     y   CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.templates_id_seq;
       public          postgres    false         /           1259    148267    tournament_rules    TABLE     �   CREATE TABLE public.tournament_rules (
    tournament character varying(255) NOT NULL,
    name_exception character varying(255) NOT NULL
);
 $   DROP TABLE public.tournament_rules;
       public         heap    postgres    false         �            1259    147779    trade_id_seq    SEQUENCE     u   CREATE SEQUENCE public.trade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.trade_id_seq;
       public          postgres    false         0           1259    148273    trade_market    TABLE     �  CREATE TABLE public.trade_market (
    id integer DEFAULT nextval('public.trade_id_seq'::regclass) NOT NULL,
    item_id character varying(255) NOT NULL,
    item_name character varying(255),
    item_category integer,
    item_duration character varying(255),
    item_price character varying(255),
    item_owner character varying(255),
    day character varying(255),
    month character varying(255),
    year character varying(255),
    valid_duration character varying(255)
);
     DROP TABLE public.trade_market;
       public         heap    postgres    false    239         �            1259    147781    web_adminpanel_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.web_adminpanel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_adminpanel_id_seq;
       public          postgres    false         �            1259    147783    web_all_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_all_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;
 )   DROP SEQUENCE public.web_all_log_id_seq;
       public          postgres    false         �            1259    147785    web_api_data_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_api_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_api_data_id_seq;
       public          postgres    false         1           1259    148280    web_api_keys    TABLE     %  CREATE TABLE public.web_api_keys (
    id integer DEFAULT nextval('public.api_keys_id_seq'::regclass) NOT NULL,
    user_id integer,
    api_key character varying(40),
    level integer,
    ignore_limits integer,
    is_private_key integer,
    ip_addresses text,
    date_created integer
);
     DROP TABLE public.web_api_keys;
       public         heap    postgres    false    203         2           1259    148287    web_api_limits    TABLE     �   CREATE TABLE public.web_api_limits (
    id integer DEFAULT nextval('public.api_keys_limit_id_seq'::regclass) NOT NULL,
    uri character varying(255),
    count integer,
    hour_started integer,
    api_key character varying(255)
);
 "   DROP TABLE public.web_api_limits;
       public         heap    postgres    false    204         3           1259    148294    web_api_logs    TABLE     |  CREATE TABLE public.web_api_logs (
    id integer DEFAULT nextval('public.api_keys_logs_id_seq'::regclass) NOT NULL,
    uri character varying(255),
    method character varying(255),
    params text,
    api_key character varying(255),
    ip_address character varying(255),
    "time" integer,
    rtime real,
    authorized character varying(255),
    response_code integer
);
     DROP TABLE public.web_api_logs;
       public         heap    postgres    false    205         4           1259    148301    web_bandwith    TABLE     m  CREATE TABLE public.web_bandwith (
    id integer NOT NULL,
    total_point_used character varying(255),
    total_cash_used character varying(255),
    total_item_buyed character varying(255),
    max_point_used character varying(255),
    max_cash_used character varying(255),
    max_item_buyed character varying(255),
    date_updated character varying(255)
);
     DROP TABLE public.web_bandwith;
       public         heap    postgres    false         �            1259    147787    web_battlepass_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.web_battlepass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_battlepass_id_seq;
       public          postgres    false         5           1259    148307    web_battlepass    TABLE     �  CREATE TABLE public.web_battlepass (
    id integer DEFAULT nextval('public.web_battlepass_id_seq'::regclass) NOT NULL,
    battlepass_name character varying(255) NOT NULL,
    battlepass_type integer NOT NULL,
    battlepass_reward text DEFAULT nextval('public.web_battlepass_id_seq'::regclass) NOT NULL,
    battlepass_status integer,
    date_created character varying(255),
    date_updated character varying(255)
);
 "   DROP TABLE public.web_battlepass;
       public         heap    postgres    false    243    243         �            1259    147789    web_battlepass_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_battlepass_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.web_battlepass_list_id_seq;
       public          postgres    false         6           1259    148315    web_battlepass_list    TABLE     �  CREATE TABLE public.web_battlepass_list (
    id integer NOT NULL,
    battlepass_level integer DEFAULT nextval('public.web_battlepass_list_id_seq'::regclass),
    battlepass_totalexp integer,
    battlepass_reward_item integer,
    battlepass_reward_duration integer,
    battlepass_type integer,
    battlepass_total_claimed integer DEFAULT 0,
    date_created integer,
    date_updated integer
);
 '   DROP TABLE public.web_battlepass_list;
       public         heap    postgres    false    244         7           1259    148320    web_customtoken    TABLE     �   CREATE TABLE public.web_customtoken (
    id integer NOT NULL,
    csrf_token character varying(255),
    ip_address character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
 #   DROP TABLE public.web_customtoken;
       public         heap    postgres    false         �            1259    147791    web_download_seq    SEQUENCE     y   CREATE SEQUENCE public.web_download_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.web_download_seq;
       public          postgres    false         8           1259    148326    web_download_clientlauncher    TABLE     �  CREATE TABLE public.web_download_clientlauncher (
    id integer DEFAULT nextval('public.web_download_seq'::regclass) NOT NULL,
    file_name character varying,
    file_description character varying(255),
    file_size character varying(255),
    file_total_download character varying(255),
    file_cloud_type character varying(255),
    file_type character varying(255),
    file_url character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
 /   DROP TABLE public.web_download_clientlauncher;
       public         heap    postgres    false    245         �            1259    147793    web_email_confirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_email_confirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_email_confirmation_id_seq;
       public          postgres    false         �            1259    147795    web_exchangeticket_seq    SEQUENCE        CREATE SEQUENCE public.web_exchangeticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_exchangeticket_seq;
       public          postgres    false         9           1259    148333    web_exchangeticket    TABLE     �  CREATE TABLE public.web_exchangeticket (
    id integer DEFAULT nextval('public.web_exchangeticket_seq'::regclass) NOT NULL,
    item_id character varying(255),
    item_name character varying(255),
    item_count character varying(255),
    item_price character varying(255),
    item_img character varying(255),
    stock character varying(255),
    visible character varying(255)
);
 &   DROP TABLE public.web_exchangeticket;
       public         heap    postgres    false    247         �            1259    147797    web_giftitem_log_seq    SEQUENCE     �   CREATE SEQUENCE public.web_giftitem_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1;
 +   DROP SEQUENCE public.web_giftitem_log_seq;
       public          postgres    false         :           1259    148340    web_ipbanned    TABLE     L   CREATE TABLE public.web_ipbanned (
    ip_address character varying(255)
);
     DROP TABLE public.web_ipbanned;
       public         heap    postgres    false         �            1259    147799    web_launcher_ipaddress_id    SEQUENCE     �   CREATE SEQUENCE public.web_launcher_ipaddress_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_launcher_ipaddress_id;
       public          postgres    false                    1259    147815    web_reset_password_sequence_id    SEQUENCE     �   CREATE SEQUENCE public.web_reset_password_sequence_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.web_reset_password_sequence_id;
       public          postgres    false         ;           1259    148343    web_log_forgotpassword    TABLE     `  CREATE TABLE public.web_log_forgotpassword (
    id integer DEFAULT nextval('public.web_reset_password_sequence_id'::regclass) NOT NULL,
    email character varying(255),
    secret_token text,
    valid_date character varying(255),
    status character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
 *   DROP TABLE public.web_log_forgotpassword;
       public         heap    postgres    false    257         <           1259    148350    web_log_general    TABLE     <  CREATE TABLE public.web_log_general (
    operating_system character varying(255),
    browser character varying(255),
    ip_address character varying(255),
    visited_page character varying(255),
    actions character varying(255),
    total_visit character varying(255),
    last_visit character varying(255)
);
 #   DROP TABLE public.web_log_general;
       public         heap    postgres    false                    1259    147819    web_shop_log_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_shop_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_shop_log_id_seq;
       public          postgres    false         =           1259    148356    web_log_shop    TABLE       CREATE TABLE public.web_log_shop (
    id integer DEFAULT nextval('public.web_shop_log_id_seq'::regclass) NOT NULL,
    owner_id integer,
    item_id integer,
    count integer,
    date_created character varying(255),
    date_updated character varying(255)
);
     DROP TABLE public.web_log_shop;
       public         heap    postgres    false    259         �            1259    147801 !   web_log_verifyaccount_id_sequence    SEQUENCE     �   CREATE SEQUENCE public.web_log_verifyaccount_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.web_log_verifyaccount_id_sequence;
       public          postgres    false         >           1259    148363    web_log_verifyaccount    TABLE     b  CREATE TABLE public.web_log_verifyaccount (
    id integer DEFAULT nextval('public.web_log_verifyaccount_id_sequence'::regclass) NOT NULL,
    email character varying(255),
    secret_token text,
    valid_date character varying(255),
    status character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
 )   DROP TABLE public.web_log_verifyaccount;
       public         heap    postgres    false    250         �            1259    147803    web_news_id_seq    SEQUENCE        CREATE SEQUENCE public.web_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;
 &   DROP SEQUENCE public.web_news_id_seq;
       public          postgres    false         �            1259    147805    web_packshop_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_packshop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_packshop_id_seq;
       public          postgres    false         ?           1259    148370    web_packshop    TABLE     �  CREATE TABLE public.web_packshop (
    id integer DEFAULT nextval('public.web_packshop_id_seq'::regclass) NOT NULL,
    package_name character varying(255),
    package_reward character varying(255),
    package_duration character varying(255),
    package_qty integer,
    package_price integer,
    package_status character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
     DROP TABLE public.web_packshop;
       public         heap    postgres    false    252         �            1259    147807    web_quickslide_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_quickslide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;
 ,   DROP SEQUENCE public.web_quickslide_id_seq;
       public          postgres    false         @           1259    148377    web_quickslide    TABLE     =  CREATE TABLE public.web_quickslide (
    id integer DEFAULT nextval('public.web_quickslide_id_seq'::regclass) NOT NULL,
    quickslide_title character varying(255),
    quickslide_description text,
    quickslide_img character varying(255),
    quickslide_date character varying(255),
    quickslide_state integer
);
 "   DROP TABLE public.web_quickslide;
       public         heap    postgres    false    253         �            1259    147809    web_rankinfo_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_rankinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99
    CACHE 1;
 *   DROP SEQUENCE public.web_rankinfo_id_seq;
       public          postgres    false         A           1259    148384    web_rankinfo    TABLE     �   CREATE TABLE public.web_rankinfo (
    id integer DEFAULT nextval('public.web_rankinfo_id_seq'::regclass) NOT NULL,
    rank character varying(255),
    rank_name character varying(255) DEFAULT 0,
    expend character varying(255) DEFAULT 0
);
     DROP TABLE public.web_rankinfo;
       public         heap    postgres    false    254         �            1259    147811    web_recharge_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_recharge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;
 *   DROP SEQUENCE public.web_recharge_id_seq;
       public          postgres    false                     1259    147813    web_report_id_seq    SEQUENCE     z   CREATE SEQUENCE public.web_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_report_id_seq;
       public          postgres    false         B           1259    148393    web_settings    TABLE     �  CREATE TABLE public.web_settings (
    id integer NOT NULL,
    meta_author character varying(255),
    meta_description character varying(255),
    meta_keywords character varying(255),
    project_name character varying(255),
    project_logo character varying(255),
    project_icon character varying(255),
    running_text character varying(255),
    server_condition character varying(255),
    website_condition character varying(255),
    discord_embed_link character varying(255),
    facebook_embed_link character varying(255),
    instagram_embed_link character varying(255),
    youtube_embed_link character varying(255),
    webshop character varying(255),
    trade_market character varying(255),
    exchange_ticket character varying(255),
    voucher character varying(255),
    forgot_password character varying(255),
    register character varying(255),
    attendance character varying(255),
    redeemcode character varying(255),
    change_email character varying(255),
    event_ticket character varying(255),
    email_verification character varying(255),
    google_register character varying(255),
    web_log character varying(255),
    packshop character varying(255),
    api_authorization_key character varying(255)
);
     DROP TABLE public.web_settings;
       public         heap    postgres    false         �           0    0     COLUMN web_settings.event_ticket    COMMENT     C   COMMENT ON COLUMN public.web_settings.event_ticket IS 'Ticket ID';
          public          postgres    false    322                    1259    147817    web_shop_id_seq    SEQUENCE     x   CREATE SEQUENCE public.web_shop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_shop_id_seq;
       public          postgres    false         C           1259    148399    web_shop    TABLE     �  CREATE TABLE public.web_shop (
    id integer DEFAULT nextval('public.web_shop_id_seq'::regclass) NOT NULL,
    item_id integer,
    item_name character varying(255),
    item_image character varying(255),
    item_description text,
    item_count_option character varying(255),
    item_price_option character varying(255),
    item_stock character varying(255),
    item_visible character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);
    DROP TABLE public.web_shop;
       public         heap    postgres    false    258                    1259    147821    web_tokenkey_id_seq    SEQUENCE     |   CREATE SEQUENCE public.web_tokenkey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_tokenkey_id_seq;
       public          postgres    false         D           1259    148406    web_tokenkey    TABLE     �   CREATE TABLE public.web_tokenkey (
    id integer DEFAULT nextval('public.web_tokenkey_id_seq'::regclass) NOT NULL,
    token character varying(255),
    is_valid integer
);
     DROP TABLE public.web_tokenkey;
       public         heap    postgres    false    260                    1259    147823    webdata_news_seq    SEQUENCE     �   CREATE SEQUENCE public.webdata_news_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;
 '   DROP SEQUENCE public.webdata_news_seq;
       public          postgres    false                    1259    147825    webshop_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.webshop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;
 %   DROP SEQUENCE public.webshop_id_seq;
       public          postgres    false         E           1259    148410    webshop    TABLE     �  CREATE TABLE public.webshop (
    id integer DEFAULT nextval('public.webshop_id_seq'::regclass) NOT NULL,
    webshop_itemid character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemname character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemdescription text,
    webshop_itemrating character varying(255),
    webshop_itemcategory character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemstatus character varying(1) DEFAULT 1,
    webshop_totalbuy character varying(255),
    webshop_itemimg character varying(255),
    webshop_itemcount_3days character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemprice_3days character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemcount_7days character varying(255),
    webshop_itemprice_7days character varying(255),
    webshop_itemcount_30days character varying(255),
    webshop_itemprice_30days character varying(255),
    webshop_itemcount_permanent character varying(255),
    webshop_itemprice_permanent character varying(255)
);
    DROP TABLE public.webshop;
       public         heap    postgres    false    262         �           0    0    COLUMN webshop.webshop_itemid    COMMENT     >   COMMENT ON COLUMN public.webshop.webshop_itemid IS 'ITEM ID';
          public          postgres    false    325         �           0    0    COLUMN webshop.webshop_itemname    COMMENT     B   COMMENT ON COLUMN public.webshop.webshop_itemname IS 'ITEM NAME';
          public          postgres    false    325         �           0    0 !   COLUMN webshop.webshop_itemrating    COMMENT     O   COMMENT ON COLUMN public.webshop.webshop_itemrating IS 'Stars Rating For Acc';
          public          postgres    false    325         �           0    0 #   COLUMN webshop.webshop_itemcategory    COMMENT     j   COMMENT ON COLUMN public.webshop.webshop_itemcategory IS 'Categori : Main / Character & Headgear / Item';
          public          postgres    false    325         �           0    0 !   COLUMN webshop.webshop_itemstatus    COMMENT     \   COMMENT ON COLUMN public.webshop.webshop_itemstatus IS 'Status : 1 = Active, 2 = Disabled';
          public          postgres    false    325         �           0    0    COLUMN webshop.webshop_totalbuy    COMMENT     d   COMMENT ON COLUMN public.webshop.webshop_totalbuy IS 'Automatic Filled If Players Buying The Item';
          public          postgres    false    325         �           0    0 &   COLUMN webshop.webshop_itemcount_3days    COMMENT     U   COMMENT ON COLUMN public.webshop.webshop_itemcount_3days IS '3 Days Count : 259200';
          public          postgres    false    325         �           0    0 &   COLUMN webshop.webshop_itemprice_3days    COMMENT     U   COMMENT ON COLUMN public.webshop.webshop_itemprice_3days IS '3 Days Duration Price';
          public          postgres    false    325         �           0    0 &   COLUMN webshop.webshop_itemcount_7days    COMMENT     U   COMMENT ON COLUMN public.webshop.webshop_itemcount_7days IS '7 Days Count : 604800';
          public          postgres    false    325         �           0    0 &   COLUMN webshop.webshop_itemprice_7days    COMMENT     U   COMMENT ON COLUMN public.webshop.webshop_itemprice_7days IS '7 Days Duration Price';
          public          postgres    false    325         �           0    0 '   COLUMN webshop.webshop_itemcount_30days    COMMENT     X   COMMENT ON COLUMN public.webshop.webshop_itemcount_30days IS '30 Days Count : 2592000';
          public          postgres    false    325         �           0    0 '   COLUMN webshop.webshop_itemprice_30days    COMMENT     W   COMMENT ON COLUMN public.webshop.webshop_itemprice_30days IS '30 Days Duration Price';
          public          postgres    false    325         �           0    0 *   COLUMN webshop.webshop_itemcount_permanent    COMMENT     W   COMMENT ON COLUMN public.webshop.webshop_itemcount_permanent IS 'Permanent Count : 1';
          public          postgres    false    325         �           0    0 *   COLUMN webshop.webshop_itemprice_permanent    COMMENT     \   COMMENT ON COLUMN public.webshop.webshop_itemprice_permanent IS 'Permanent Duration Price';
          public          postgres    false    325         A          0    147827    accounts 
   TABLE DATA           	  COPY public.accounts (login, password, player_id, player_name, name_color, clan_id, rank, gp, exp, pc_cafe, fights, fights_win, fights_lost, kills_count, deaths_count, headshots_count, escapes, access_level, lastip, email, last_rankup_date, money, online, weapon_primary, weapon_secondary, weapon_melee, weapon_thrown_normal, weapon_thrown_special, char_red, char_blue, char_helmet, char_dino, char_beret, brooch, insignia, medal, blue_order, mission_id1, clanaccess, clandate, effects, fights_draw, mission_id2, mission_id3, totalkills_count, totalfights_count, status, last_login, clan_game_pt, clan_wins_pt, last_mac, ban_obj_id, kuyraicoin, hint_question, hint_answer, date_registered, email_verification, battlepass_type, facebook, twitter, instagram, github) FROM stdin;
    public          postgres    false    263       3649.dat B          0    147888    ban_history 
   TABLE DATA           h   COPY public.ban_history (object_id, provider_id, type, value, reason, start_date, end_date) FROM stdin;
    public          postgres    false    264       3650.dat C          0    147901    check_user_attendance 
   TABLE DATA           o   COPY public.check_user_attendance (id, event_id, player_id, item_reward, item_count, date_claimed) FROM stdin;
    public          postgres    false    265       3651.dat D          0    147909    check_user_itemcode 
   TABLE DATA           Z   COPY public.check_user_itemcode (id, uid, item_code, username, date_redeemed) FROM stdin;
    public          postgres    false    266       3652.dat E          0    147916    check_user_voucher 
   TABLE DATA           L   COPY public.check_user_voucher (id, uid, voucher, date_claimed) FROM stdin;
    public          postgres    false    267       3653.dat F          0    147923 	   clan_data 
   TABLE DATA           3  COPY public.clan_data (clan_id, clan_rank, clan_name, owner_id, logo, color, clan_info, clan_news, create_date, autoridade, limite_rank, limite_idade, limite_idade2, partidas, vitorias, derrotas, pontos, max_players, clan_exp, best_exp, best_participation, best_wins, best_kills, best_headshot) FROM stdin;
    public          postgres    false    268       3654.dat G          0    147953    clan_invites 
   TABLE DATA           L   COPY public.clan_invites (clan_id, player_id, dateinvite, text) FROM stdin;
    public          postgres    false    269       3655.dat H          0    147963    events_attendance 
   TABLE DATA           g   COPY public.events_attendance (id, day, item_id, item_name, item_count, total_claim, date) FROM stdin;
    public          postgres    false    270       3656.dat I          0    147970    events_login 
   TABLE DATA           U   COPY public.events_login (start_date, end_date, reward_id, reward_count) FROM stdin;
    public          postgres    false    271       3657.dat J          0    147973    events_mapbonus 
   TABLE DATA           k   COPY public.events_mapbonus (start_date, end_date, map_id, stage_type, percent_xp, percent_gp) FROM stdin;
    public          postgres    false    272       3658.dat K          0    147982    events_playtime 
   TABLE DATA           �   COPY public.events_playtime (start_date, end_date, title, seconds_target, good_reward1, good_reward2, good_count1, good_count2) FROM stdin;
    public          postgres    false    273       3659.dat L          0    147993    events_quest 
   TABLE DATA           <   COPY public.events_quest (start_date, end_date) FROM stdin;
    public          postgres    false    274       3660.dat M          0    147998    events_rankup 
   TABLE DATA           U   COPY public.events_rankup (start_date, end_date, percent_xp, percent_gp) FROM stdin;
    public          postgres    false    275       3661.dat N          0    148005    events_register 
   TABLE DATA           n   COPY public.events_register (id, item_id, item_name, item_category, item_count, stock, is_active) FROM stdin;
    public          postgres    false    276       3662.dat O          0    148011    events_visit 
   TABLE DATA           w   COPY public.events_visit (event_id, start_date, end_date, title, checks, goods1, counts1, goods2, counts2) FROM stdin;
    public          postgres    false    277       3663.dat P          0    148024    events_xmas 
   TABLE DATA           T   COPY public.events_xmas (start_date, end_date, reward_id, reward_count) FROM stdin;
    public          postgres    false    278       3664.dat Q          0    148029    friends 
   TABLE DATA           F   COPY public.friends (owner_id, friend_id, state, removed) FROM stdin;
    public          postgres    false    279       3665.dat R          0    148036    info_basic_items 
   TABLE DATA           c   COPY public.info_basic_items (acquisition, item_id, item_name, item_count, item_equip) FROM stdin;
    public          postgres    false    280       3666.dat S          0    148040    info_channels 
   TABLE DATA           N   COPY public.info_channels (server_id, channel_id, type, announce) FROM stdin;
    public          postgres    false    281       3667.dat T          0    148050    info_cupons_flags 
   TABLE DATA           A   COPY public.info_cupons_flags (item_id, effect_flag) FROM stdin;
    public          postgres    false    282       3668.dat U          0    148053    info_gameservers 
   TABLE DATA           ]   COPY public.info_gameservers (id, state, type, ip, port, sync_port, max_players) FROM stdin;
    public          postgres    false    283       3669.dat V          0    148057    info_login_configs 
   TABLE DATA              COPY public.info_login_configs (config_id, "onlyGM", missions, "UserFileList", "Version", "GiftSystem", "ExitURL") FROM stdin;
    public          postgres    false    284       3670.dat W          0    148067    info_missions 
   TABLE DATA           B   COPY public.info_missions (mission_id, price, enable) FROM stdin;
    public          postgres    false    285       3671.dat X          0    148073    info_rank_awards 
   TABLE DATA           _   COPY public.info_rank_awards (rank_id, item_id, item_name, item_count, item_equip) FROM stdin;
    public          postgres    false    286       3672.dat Y          0    148077 	   item_code 
   TABLE DATA           �   COPY public.item_code (id, item_id, item_name, item_count, item_code, cash, type, qty, valid_date, date_created, date_updated) FROM stdin;
    public          postgres    false    287       3673.dat Z          0    148084    item_goods_sets 
   TABLE DATA           D   COPY public.item_goods_sets (set_id, set_name, visible) FROM stdin;
    public          postgres    false    288       3674.dat [          0    148088    item_goods_sets_items 
   TABLE DATA           �   COPY public.item_goods_sets_items (set_id, item_id, item_name, item_consume, item_count, price_money, price_points) FROM stdin;
    public          postgres    false    289       3675.dat \          0    148091    item_voucher 
   TABLE DATA           m   COPY public.item_voucher (id, voucher_item, voucher_cash, voucher_webcoin, voucher_code, active) FROM stdin;
    public          postgres    false    290       3676.dat ]          0    148098    launcher_launcherkey 
   TABLE DATA           ?   COPY public.launcher_launcherkey (id, key, status) FROM stdin;
    public          postgres    false    291       3677.dat ^          0    148102    launcher_loghistory 
   TABLE DATA           K   COPY public.launcher_loghistory (id, ip_address, date_created) FROM stdin;
    public          postgres    false    292       3678.dat _          0    148109    launcher_version_control 
   TABLE DATA           �   COPY public.launcher_version_control (id, ip_address, hwid, current_patch_version, current_launcher_version, date_created, date_updated) FROM stdin;
    public          postgres    false    293       3679.dat `          0    148116    nick_history 
   TABLE DATA           Z   COPY public.nick_history (player_id, from_nick, to_nick, change_date, motive) FROM stdin;
    public          postgres    false    294       3680.dat a          0    148127    player_bonus 
   TABLE DATA           d   COPY public.player_bonus (player_id, bonuses, sightcolor, freepass, fakerank, fakenick) FROM stdin;
    public          postgres    false    295       3681.dat b          0    148136    player_configs 
   TABLE DATA           �   COPY public.player_configs (owner_id, config, sangue, mira, mao, audio1, audio2, audio_enable, sensibilidade, visao, mouse_invertido, msgconvite, chatsussurro, macro, macro_1, macro_2, macro_3, macro_4, macro_5, keys) FROM stdin;
    public          postgres    false    296       3682.dat c          0    148162    player_events 
   TABLE DATA             COPY public.player_events (player_id, last_visit_event_id, last_visit_sequence1, last_visit_sequence2, next_visit_date, last_xmas_reward_date, last_playtime_date, last_playtime_value, last_playtime_finish, last_login_date, last_quest_date, last_quest_finish) FROM stdin;
    public          postgres    false    297       3683.dat d          0    148177    player_items 
   TABLE DATA           g   COPY public.player_items (object_id, owner_id, item_id, item_name, count, category, equip) FROM stdin;
    public          postgres    false    298       3684.dat e          0    148190    player_messages 
   TABLE DATA           ~   COPY public.player_messages (object_id, owner_id, sender_id, clan_id, sender_name, text, type, state, expire, cb) FROM stdin;
    public          postgres    false    299       3685.dat f          0    148206    player_missions 
   TABLE DATA           �   COPY public.player_missions (owner_id, actual_mission, card1, card2, card3, card4, mission1, mission2, mission3, mission4) FROM stdin;
    public          postgres    false    300       3686.dat g          0    148222    player_titles 
   TABLE DATA           v   COPY public.player_titles (owner_id, titleequiped1, titleequiped2, titleequiped3, titleflags, titleslots) FROM stdin;
    public          postgres    false    301       3687.dat �          0    148492    shop 
   TABLE DATA           �   COPY public.shop (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM stdin;
    public          postgres    false    326       3712.dat h          0    148249    shop_set 
   TABLE DATA           �   COPY public.shop_set (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM stdin;
    public          postgres    false    302       3688.dat �          0    148516    shopunbuild 
   TABLE DATA           �   COPY public.shopunbuild (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM stdin;
    public          postgres    false    327       3713.dat i          0    148267    tournament_rules 
   TABLE DATA           F   COPY public.tournament_rules (tournament, name_exception) FROM stdin;
    public          postgres    false    303       3689.dat j          0    148273    trade_market 
   TABLE DATA           �   COPY public.trade_market (id, item_id, item_name, item_category, item_duration, item_price, item_owner, day, month, year, valid_duration) FROM stdin;
    public          postgres    false    304       3690.dat k          0    148280    web_api_keys 
   TABLE DATA           ~   COPY public.web_api_keys (id, user_id, api_key, level, ignore_limits, is_private_key, ip_addresses, date_created) FROM stdin;
    public          postgres    false    305       3691.dat l          0    148287    web_api_limits 
   TABLE DATA           O   COPY public.web_api_limits (id, uri, count, hour_started, api_key) FROM stdin;
    public          postgres    false    306       3692.dat m          0    148294    web_api_logs 
   TABLE DATA           ~   COPY public.web_api_logs (id, uri, method, params, api_key, ip_address, "time", rtime, authorized, response_code) FROM stdin;
    public          postgres    false    307       3693.dat n          0    148301    web_bandwith 
   TABLE DATA           �   COPY public.web_bandwith (id, total_point_used, total_cash_used, total_item_buyed, max_point_used, max_cash_used, max_item_buyed, date_updated) FROM stdin;
    public          postgres    false    308       3694.dat o          0    148307    web_battlepass 
   TABLE DATA           �   COPY public.web_battlepass (id, battlepass_name, battlepass_type, battlepass_reward, battlepass_status, date_created, date_updated) FROM stdin;
    public          postgres    false    309       3695.dat p          0    148315    web_battlepass_list 
   TABLE DATA           �   COPY public.web_battlepass_list (id, battlepass_level, battlepass_totalexp, battlepass_reward_item, battlepass_reward_duration, battlepass_type, battlepass_total_claimed, date_created, date_updated) FROM stdin;
    public          postgres    false    310       3696.dat q          0    148320    web_customtoken 
   TABLE DATA           a   COPY public.web_customtoken (id, csrf_token, ip_address, date_created, date_updated) FROM stdin;
    public          postgres    false    311       3697.dat r          0    148326    web_download_clientlauncher 
   TABLE DATA           �   COPY public.web_download_clientlauncher (id, file_name, file_description, file_size, file_total_download, file_cloud_type, file_type, file_url, date_created, date_updated) FROM stdin;
    public          postgres    false    312       3698.dat s          0    148333    web_exchangeticket 
   TABLE DATA           v   COPY public.web_exchangeticket (id, item_id, item_name, item_count, item_price, item_img, stock, visible) FROM stdin;
    public          postgres    false    313       3699.dat t          0    148340    web_ipbanned 
   TABLE DATA           2   COPY public.web_ipbanned (ip_address) FROM stdin;
    public          postgres    false    314       3700.dat u          0    148343    web_log_forgotpassword 
   TABLE DATA           y   COPY public.web_log_forgotpassword (id, email, secret_token, valid_date, status, date_created, date_updated) FROM stdin;
    public          postgres    false    315       3701.dat v          0    148350    web_log_general 
   TABLE DATA           �   COPY public.web_log_general (operating_system, browser, ip_address, visited_page, actions, total_visit, last_visit) FROM stdin;
    public          postgres    false    316       3702.dat w          0    148356    web_log_shop 
   TABLE DATA           `   COPY public.web_log_shop (id, owner_id, item_id, count, date_created, date_updated) FROM stdin;
    public          postgres    false    317       3703.dat x          0    148363    web_log_verifyaccount 
   TABLE DATA           x   COPY public.web_log_verifyaccount (id, email, secret_token, valid_date, status, date_created, date_updated) FROM stdin;
    public          postgres    false    318       3704.dat y          0    148370    web_packshop 
   TABLE DATA           �   COPY public.web_packshop (id, package_name, package_reward, package_duration, package_qty, package_price, package_status, date_created, date_updated) FROM stdin;
    public          postgres    false    319       3705.dat z          0    148377    web_quickslide 
   TABLE DATA           �   COPY public.web_quickslide (id, quickslide_title, quickslide_description, quickslide_img, quickslide_date, quickslide_state) FROM stdin;
    public          postgres    false    320       3706.dat {          0    148384    web_rankinfo 
   TABLE DATA           C   COPY public.web_rankinfo (id, rank, rank_name, expend) FROM stdin;
    public          postgres    false    321       3707.dat |          0    148393    web_settings 
   TABLE DATA           �  COPY public.web_settings (id, meta_author, meta_description, meta_keywords, project_name, project_logo, project_icon, running_text, server_condition, website_condition, discord_embed_link, facebook_embed_link, instagram_embed_link, youtube_embed_link, webshop, trade_market, exchange_ticket, voucher, forgot_password, register, attendance, redeemcode, change_email, event_ticket, email_verification, google_register, web_log, packshop, api_authorization_key) FROM stdin;
    public          postgres    false    322       3708.dat }          0    148399    web_shop 
   TABLE DATA           �   COPY public.web_shop (id, item_id, item_name, item_image, item_description, item_count_option, item_price_option, item_stock, item_visible, date_created, date_updated) FROM stdin;
    public          postgres    false    323       3709.dat ~          0    148406    web_tokenkey 
   TABLE DATA           ;   COPY public.web_tokenkey (id, token, is_valid) FROM stdin;
    public          postgres    false    324       3710.dat           0    148410    webshop 
   TABLE DATA           �  COPY public.webshop (id, webshop_itemid, webshop_itemname, webshop_itemdescription, webshop_itemrating, webshop_itemcategory, webshop_itemstatus, webshop_totalbuy, webshop_itemimg, webshop_itemcount_3days, webshop_itemprice_3days, webshop_itemcount_7days, webshop_itemprice_7days, webshop_itemcount_30days, webshop_itemprice_30days, webshop_itemcount_permanent, webshop_itemprice_permanent) FROM stdin;
    public          postgres    false    325       3711.dat �           0    0    account_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.account_id_seq', 43, true);
          public          postgres    false    202         �           0    0    api_keys_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.api_keys_id_seq', 3, true);
          public          postgres    false    203         �           0    0    api_keys_limit_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.api_keys_limit_id_seq', 3, true);
          public          postgres    false    204         �           0    0    api_keys_logs_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.api_keys_logs_id_seq', 6530, true);
          public          postgres    false    205         �           0    0    auto_ban_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.auto_ban_seq', 5, true);
          public          postgres    false    206         �           0    0    ban_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('public.ban_seq', 5, false);
          public          postgres    false    207         �           0    0    captcha_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.captcha_id_seq', 3, true);
          public          postgres    false    208         �           0    0    channels_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.channels_id_seq', 5, false);
          public          postgres    false    209         �           0    0    check_event_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.check_event_seq', 5, true);
          public          postgres    false    210         �           0    0    check_user_attendance_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.check_user_attendance_id_seq', 37, true);
          public          postgres    false    211         �           0    0    check_user_itemcode_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.check_user_itemcode_seq', 45, true);
          public          postgres    false    212         �           0    0    check_user_voucher_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.check_user_voucher_id_seq', 12, true);
          public          postgres    false    213         �           0    0    clan_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('public.clan_seq', 6, true);
          public          postgres    false    214         �           0    0    event_attendance_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_attendance_id_seq', 140, true);
          public          postgres    false    215         �           0    0    events_login_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.events_login_id_seq', 7, true);
          public          postgres    false    216         �           0    0    gameservers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.gameservers_id_seq', 5, false);
          public          postgres    false    217         �           0    0    gift_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.gift_id_seq', 5, true);
          public          postgres    false    218         �           0    0    ipsystem_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ipsystem_id_seq', 5, false);
          public          postgres    false    219         �           0    0    item_code_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.item_code_id_seq', 2, true);
          public          postgres    false    220         �           0    0    item_voucher_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.item_voucher_id_seq', 9, true);
          public          postgres    false    221         �           0    0    items_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.items_id_seq', 311, true);
          public          postgres    false    222         �           0    0    jogador_amigo_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.jogador_amigo_seq', 5, true);
          public          postgres    false    223         �           0    0    jogador_inventario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.jogador_inventario_seq', 5, true);
          public          postgres    false    224         �           0    0    jogador_mensagem_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.jogador_mensagem_seq', 5, true);
          public          postgres    false    225         �           0    0    launcher_launcherkey_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.launcher_launcherkey_id_seq', 69, true);
          public          postgres    false    226         �           0    0    launcher_loghistory_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.launcher_loghistory_id_seq', 14, true);
          public          postgres    false    227         �           0    0    launcher_version_control_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.launcher_version_control_id_seq', 3, false);
          public          postgres    false    228         �           0    0    loja_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('public.loja_seq', 8, true);
          public          postgres    false    229         �           0    0    message_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.message_id_seq', 11, true);
          public          postgres    false    230         �           0    0    player_characters_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.player_characters_id_seq', 5, true);
          public          postgres    false    231         �           0    0    player_eqipment_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.player_eqipment_id_seq', 5, true);
          public          postgres    false    232         �           0    0 $   player_friends_player_account_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.player_friends_player_account_id_seq', 5, false);
          public          postgres    false    233         �           0    0    player_topups_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.player_topups_seq', 9, true);
          public          postgres    false    234         �           0    0    players_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.players_id_seq', 5, true);
          public          postgres    false    235         �           0    0    server_license_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.server_license_id_seq', 2, false);
          public          postgres    false    236         �           0    0    storage_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.storage_seq', 5, true);
          public          postgres    false    237         �           0    0    templates_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.templates_id_seq', 5, false);
          public          postgres    false    238         �           0    0    trade_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.trade_id_seq', 14, true);
          public          postgres    false    239         �           0    0    web_adminpanel_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.web_adminpanel_id_seq', 198, true);
          public          postgres    false    240         �           0    0    web_all_log_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_all_log_id_seq', 5, false);
          public          postgres    false    241         �           0    0    web_api_data_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_api_data_id_seq', 3, false);
          public          postgres    false    242         �           0    0    web_battlepass_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.web_battlepass_id_seq', 3, true);
          public          postgres    false    243         �           0    0    web_battlepass_list_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.web_battlepass_list_id_seq', 5, true);
          public          postgres    false    244         �           0    0    web_download_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.web_download_seq', 22, true);
          public          postgres    false    245         �           0    0    web_email_confirmation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.web_email_confirmation_id_seq', 10, true);
          public          postgres    false    246         �           0    0    web_exchangeticket_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.web_exchangeticket_seq', 13, true);
          public          postgres    false    247         �           0    0    web_giftitem_log_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.web_giftitem_log_seq', 12, true);
          public          postgres    false    248         �           0    0    web_launcher_ipaddress_id    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_launcher_ipaddress_id', 5, true);
          public          postgres    false    249         �           0    0 !   web_log_verifyaccount_id_sequence    SEQUENCE SET     O   SELECT pg_catalog.setval('public.web_log_verifyaccount_id_sequence', 5, true);
          public          postgres    false    250         �           0    0    web_news_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.web_news_id_seq', 19, true);
          public          postgres    false    251         �           0    0    web_packshop_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_packshop_id_seq', 2, true);
          public          postgres    false    252         �           0    0    web_quickslide_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.web_quickslide_id_seq', 23, true);
          public          postgres    false    253         �           0    0    web_rankinfo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_rankinfo_id_seq', 68, true);
          public          postgres    false    254         �           0    0    web_recharge_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_recharge_id_seq', 25, true);
          public          postgres    false    255         �           0    0    web_report_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.web_report_id_seq', 9, true);
          public          postgres    false    256         �           0    0    web_reset_password_sequence_id    SEQUENCE SET     L   SELECT pg_catalog.setval('public.web_reset_password_sequence_id', 8, true);
          public          postgres    false    257         �           0    0    web_shop_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.web_shop_id_seq', 2, false);
          public          postgres    false    258         �           0    0    web_shop_log_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_shop_log_id_seq', 2, false);
          public          postgres    false    259         �           0    0    web_tokenkey_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.web_tokenkey_id_seq', 134, true);
          public          postgres    false    260         �           0    0    webdata_news_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.webdata_news_seq', 5, true);
          public          postgres    false    261         �           0    0    webshop_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.webshop_id_seq', 21, true);
          public          postgres    false    262         E           2606    148424    accounts accounts_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (player_id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            postgres    false    263         G           2606    148426 0   check_user_attendance check_user_attendance_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.check_user_attendance
    ADD CONSTRAINT check_user_attendance_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.check_user_attendance DROP CONSTRAINT check_user_attendance_pkey;
       public            postgres    false    265         I           2606    148428 *   check_user_voucher check_user_voucher_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.check_user_voucher
    ADD CONSTRAINT check_user_voucher_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.check_user_voucher DROP CONSTRAINT check_user_voucher_pkey;
       public            postgres    false    267         K           2606    148430    clan_data clan_data_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.clan_data
    ADD CONSTRAINT clan_data_pkey PRIMARY KEY (clan_id);
 B   ALTER TABLE ONLY public.clan_data DROP CONSTRAINT clan_data_pkey;
       public            postgres    false    268         M           2606    148432 (   events_attendance events_attendance_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.events_attendance
    ADD CONSTRAINT events_attendance_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.events_attendance DROP CONSTRAINT events_attendance_pkey;
       public            postgres    false    270         O           2606    148434    item_code item_code_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.item_code
    ADD CONSTRAINT item_code_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.item_code DROP CONSTRAINT item_code_pkey;
       public            postgres    false    287         S           2606    148438 0   item_goods_sets_items item_goods_sets_items_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.item_goods_sets_items
    ADD CONSTRAINT item_goods_sets_items_pkey PRIMARY KEY (set_id, item_id);
 Z   ALTER TABLE ONLY public.item_goods_sets_items DROP CONSTRAINT item_goods_sets_items_pkey;
       public            postgres    false    289    289         Q           2606    148436 $   item_goods_sets item_goods_sets_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.item_goods_sets
    ADD CONSTRAINT item_goods_sets_pkey PRIMARY KEY (set_id);
 N   ALTER TABLE ONLY public.item_goods_sets DROP CONSTRAINT item_goods_sets_pkey;
       public            postgres    false    288         U           2606    148440    item_voucher item_voucher_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.item_voucher
    ADD CONSTRAINT item_voucher_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.item_voucher DROP CONSTRAINT item_voucher_pkey;
       public            postgres    false    290         a           2606    148452    web_api_keys keys_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.web_api_keys
    ADD CONSTRAINT keys_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_api_keys DROP CONSTRAINT keys_pkey;
       public            postgres    false    305         W           2606    148442 .   launcher_launcherkey launcher_launcherkey_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.launcher_launcherkey
    ADD CONSTRAINT launcher_launcherkey_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.launcher_launcherkey DROP CONSTRAINT launcher_launcherkey_pkey;
       public            postgres    false    291         Y           2606    148444 ,   launcher_loghistory launcher_loghistory_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.launcher_loghistory
    ADD CONSTRAINT launcher_loghistory_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.launcher_loghistory DROP CONSTRAINT launcher_loghistory_pkey;
       public            postgres    false    292         [           2606    148446 6   launcher_version_control launcher_version_control_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.launcher_version_control
    ADD CONSTRAINT launcher_version_control_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.launcher_version_control DROP CONSTRAINT launcher_version_control_pkey;
       public            postgres    false    293         c           2606    148454    web_api_limits limits_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.web_api_limits
    ADD CONSTRAINT limits_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.web_api_limits DROP CONSTRAINT limits_pkey;
       public            postgres    false    306         ]           2606    148448 "   player_configs player_configs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.player_configs
    ADD CONSTRAINT player_configs_pkey PRIMARY KEY (owner_id);
 L   ALTER TABLE ONLY public.player_configs DROP CONSTRAINT player_configs_pkey;
       public            postgres    false    296         _           2606    148450    trade_market trade_market_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.trade_market
    ADD CONSTRAINT trade_market_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.trade_market DROP CONSTRAINT trade_market_pkey;
       public            postgres    false    304         e           2606    148456    web_api_logs web_api_logs2_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.web_api_logs
    ADD CONSTRAINT web_api_logs2_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.web_api_logs DROP CONSTRAINT web_api_logs2_pkey;
       public            postgres    false    307         g           2606    148458    web_bandwith web_bandwith_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_bandwith
    ADD CONSTRAINT web_bandwith_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_bandwith DROP CONSTRAINT web_bandwith_pkey;
       public            postgres    false    308         k           2606    148462 ,   web_battlepass_list web_battlepass_list_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.web_battlepass_list
    ADD CONSTRAINT web_battlepass_list_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.web_battlepass_list DROP CONSTRAINT web_battlepass_list_pkey;
       public            postgres    false    310         i           2606    148460 "   web_battlepass web_battlepass_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.web_battlepass
    ADD CONSTRAINT web_battlepass_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_battlepass DROP CONSTRAINT web_battlepass_pkey;
       public            postgres    false    309         m           2606    148464 $   web_customtoken web_customtoken_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.web_customtoken
    ADD CONSTRAINT web_customtoken_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.web_customtoken DROP CONSTRAINT web_customtoken_pkey;
       public            postgres    false    311         o           2606    148466 -   web_download_clientlauncher web_download_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.web_download_clientlauncher
    ADD CONSTRAINT web_download_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.web_download_clientlauncher DROP CONSTRAINT web_download_pkey;
       public            postgres    false    312         q           2606    148468 *   web_exchangeticket web_exchangeticket_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.web_exchangeticket
    ADD CONSTRAINT web_exchangeticket_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.web_exchangeticket DROP CONSTRAINT web_exchangeticket_pkey;
       public            postgres    false    313         s           2606    148470 1   web_log_forgotpassword web_log_resetpassword_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.web_log_forgotpassword
    ADD CONSTRAINT web_log_resetpassword_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.web_log_forgotpassword DROP CONSTRAINT web_log_resetpassword_pkey;
       public            postgres    false    315         w           2606    148474 0   web_log_verifyaccount web_log_verifyaccount_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.web_log_verifyaccount
    ADD CONSTRAINT web_log_verifyaccount_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.web_log_verifyaccount DROP CONSTRAINT web_log_verifyaccount_pkey;
       public            postgres    false    318         y           2606    148476    web_packshop web_packshop_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_packshop
    ADD CONSTRAINT web_packshop_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_packshop DROP CONSTRAINT web_packshop_pkey;
       public            postgres    false    319         {           2606    148478 "   web_quickslide web_quickslide_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.web_quickslide
    ADD CONSTRAINT web_quickslide_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_quickslide DROP CONSTRAINT web_quickslide_pkey;
       public            postgres    false    320         }           2606    148480    web_rankinfo web_rankinfo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_rankinfo
    ADD CONSTRAINT web_rankinfo_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_rankinfo DROP CONSTRAINT web_rankinfo_pkey;
       public            postgres    false    321                    2606    148482    web_settings web_settings_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_settings
    ADD CONSTRAINT web_settings_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_settings DROP CONSTRAINT web_settings_pkey;
       public            postgres    false    322         u           2606    148472    web_log_shop web_shop_log_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_log_shop
    ADD CONSTRAINT web_shop_log_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_log_shop DROP CONSTRAINT web_shop_log_pkey;
       public            postgres    false    317         �           2606    148484    web_shop web_shop_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.web_shop
    ADD CONSTRAINT web_shop_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_shop DROP CONSTRAINT web_shop_pkey;
       public            postgres    false    323         �           2606    148486    web_tokenkey web_tokenkey_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.web_tokenkey
    ADD CONSTRAINT web_tokenkey_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_tokenkey DROP CONSTRAINT web_tokenkey_pkey;
       public            postgres    false    324         �           2606    148488    webshop webshop2_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.webshop
    ADD CONSTRAINT webshop2_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.webshop DROP CONSTRAINT webshop2_pkey;
       public            postgres    false    325                                                                                                                                                                                                                                                                                                                                                                                                                                                             3649.dat                                                                                            0000600 0004000 0002000 00000000573 14271176511 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        denvm	ea4c03400aaa4b8f5c4901474fb91278	43	Призрак	0	0	1	0	0	1	0	0	0	0	0	0	0	6	127.0.0.1	mashanov.d@yandex.ru	1010000	2000	f	300005158	601002069	702015025	803007066	904007043	1001001013	1001002018	1102003007	1006003041	1103003008	0	0	0	0	0	0	0	1098800	0	0	0	0	0	4294967295	2207301657	0	0	b0:6e:bf:cf:b3:ad	0	1000	What was your childhood nickname?	1	\N	0	0	\N	\N	\N	\N
\.


                                                                                                                                     3650.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3651.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3652.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3653.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3654.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3655.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3656.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3657.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3658.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3659.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3660.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3661.dat                                                                                            0000600 0004000 0002000 00000000037 14271176511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2112310000	2112312359	0	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3662.dat                                                                                            0000600 0004000 0002000 00000000053 14271176511 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	100003001	SG-550 Ext.	1	2592000	0	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3663.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3664.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3665.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3666.dat                                                                                            0000600 0004000 0002000 00000000351 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	601002003	K-5	1	3
0	702001001	M-7	1	3
0	803007001	K-400	1	3
0	904007002	Smoke	1	3
0	1001001005	Red Bulls	1	3
0	1001002006	Acid Pol	1	3
0	1102003001	Basic helmet	1	3
0	100003004	K2	1	3
0	300005003	SG6-69	1	3
0	200004006	K1	1	3
\.


                                                                                                                                                                                                                                                                                       3667.dat                                                                                            0000600 0004000 0002000 00000002171 14271176511 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	1	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	9	7	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	9	7	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	1	1	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	7	4	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	2	1	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	6	6	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	5	6	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	0	1	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
1	3	1	Добро пожаловать в Point Blank Воскрешение - Альфа Тестирование
\.


                                                                                                                                                                                                                                                                                                                                                                                                       3668.dat                                                                                            0000600 0004000 0002000 00000000572 14271176511 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1200007000	1048576
1200008000	262144
1200017000	131072
1200026000	32768
1200027000	16384
1200028000	8192
1200029000	4096
1200030000	2048
1200031000	1024
1200032000	512
1200033000	65536
1200034000	256
1200035000	128
1200036000	64
1200040000	32
1200044000	16
1200064000	2097152
1200065000	1
1200078000	8
1200079000	4
1200080000	4194304
1200185000	8388608
1200242000	16777216
\.


                                                                                                                                      3669.dat                                                                                            0000600 0004000 0002000 00000000105 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	127.0.0.1	39191	1909	1000
0	1	1	127.0.0.1	39190	1908	1000
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                           3670.dat                                                                                            0000600 0004000 0002000 00000000123 14271176511 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	f	t	5CA56B1E483FF9E24F62BE21C6BA6670	1.15.42	t	https://darkblowpbreborn.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3671.dat                                                                                            0000600 0004000 0002000 00000000241 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        14	15000	t
15	15000	t
16	15000	t
2	3000	t
3	3000	t
17	15000	t
13	0	t
1	0	f
5	5000	t
6	5000	t
7	10000	t
8	10000	t
9	12000	t
10	12000	t
11	15000	t
12	15000	t
\.


                                                                                                                                                                                                                                                                                                                                                               3672.dat                                                                                            0000600 0004000 0002000 00000006173 14271176511 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0	100003193	AUG LionFlame	86400	1
0	601002017	C. Phyton G D	86400	1
0	702001149	Fang Blade Alien	86400	1
0	803007062	K400 Alien	86400	1
1	200004026	Kriss S.V G	86400	1
1	601014004	Dual D-Eagle G	86400	1
1	702001011	Amok Kukri D	86400	1
1	803007062	K400 Alien	86400	1
2	300005087	Cheytac M200 PBIC2014	86400	1
2	601002023	IMI Uzi 9mm	86400	1
2	702001066	DEATH_SCYTHE	86400	1
2	803007062	K400 Alien	86400	1
3	400006017	M1887 D	86400	1
3	601002022	Colt 45	86400	1
3	702001012	Mine Axe D	86400	1
3	803007062	K400 Alien	86400	1
4	100003121	AK47 PBIC2013	172800	1
4	702001147	Karambit	86400	1
4	803007062	K400 Alien	86400	1
5	200004075	P90 G	172800	1
5	702001024	CandyCane	86400	1
5	803007062	K400 Alien	86400	1
6	300005015	L11501 G	172800	1
6	702001021	Keris	86400	1
6	803007062	K400 Alien	86400	1
7	400006018	SPAS15_MSC	172800	1
7	702001041	Arabian Sword	86400	1
7	803007062	K400 Alien	86400	1
8	100003114	M401 Elite	172800	1
8	702001017	FANG_BLASE	86400	1
8	803007062	K400 Alien	86400	1
9	200004136	OA93 G	172800	1
9	702001017	FANG_BLASE	86400	1
9	803007062	K400 Alien	86400	1
10	300005017	L115A1_D	172800	1
10	803007062	K400 Alien	86400	1
11	400006011	870MCS_W_D	172800	1
11	702001047	Keris XMAS	86400	1
12	601002052	C. Python TOY	86400	1
12	1001001034	Bella	259200	1
13	601002011	Glock18	86400	1
13	1001001011	Reinforced_D-Fox	259200	1
14	601002011	Glock18	86400	1
14	1001002014	Reinforced_Hide	259200	1
15	601002021	Glock18 D	86400	1
15	1001002051	Hide Kopassus	259200	1
16	601002021	Glock18 D	86400	1
16	1105003001	Santa HAT	259200	1
17	601002026	HK69	259200	1
17	1001002033	Chou	259200	1
18	601002083	C. Phyton BEAST	259200	1
18	1001001013	Reinforced_ViperRed	259200	1
19	601002083	C. Phyton BEAST	259200	1
19	1001002012	Reinforced_Leopard	259200	1
20	601002083	C. Phyton BEAST	86400	1
20	1001002053	Hide Soccer	259200	1
21	702001017	FANG_BLADE	259200	1
21	1104003015	Alien Masc	259200	1
22	702001017	FANG_BLADE	86400	1
22	1104003131	Mask Sheep	259200	1
23	702001017	FANG_BLADE	86400	1
23	1104003129	Mask PBIC2013	259200	1
24	702001004	Kukri	259200	1
24	1105003018	Chicken Hat	259200	1
25	702001049	Arabian Sword 2	259200	1
25	1105003010	Cangaceiro Hat	259200	1
26	702001009	M7 G	259200	1
26	1105003009	TOY Hat	259200	1
27	702001018	Ballistic Knife	259200	1
27	1105003001	Santa Hat	259200	1
28	100003063	AUG A3 Esport	259200	1
28	702001009	M7 G	259200	1
29	300005128	RangeMaster 338 CAMO	259200	1
29	702001012	Mine Axe D	259200	1
30	300005132	Tactilite T2 G	259200	1
30	702001066	Death Scythe	86400	1
31	702001057	Fang Blade Inferno	2592001	1
31	1105003010	Cangaceiro Hat	2592001	1
32	200004011	P90_DOTSIGHT	86400	1
32	702001011	Amok Kukri D	2592001	1
33	1300027003	Recarregamento Rapido	1	1
34	1301047000	Alteração de Nick	1	1
35	1300030003	Bullet Proof Vest	1	1
36	1300026003	Troca Rápida	1	1
37	1300032003	Hollow Point Plus	1	1
38	1300017003	Receber Drop	1	1
39	1301047000	Alteração de nick	1	1
40	1300162007	O bom perdedor	1	1
41	1300080003	100% Redução de Respawn	1	1
42	1300031007	Bala de Ferro	1	1
43	1300034030	C4 Speed Kit	0	1
44	1301047000	Alteração de nick	1	1
45	1001001286	Viper General	2592000	1
45	1001002287	Hide General	2592000	1
45	1103003016	Beret General	1	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                     3673.dat                                                                                            0000600 0004000 0002000 00000000151 14271176511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	100003001	SG-550 Ext. - Redeem Code	2592000	DARK-CV9T-NRAS-BLOW	0	Item	98	1654507858	1651915858	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       3674.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3675.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3676.dat                                                                                            0000600 0004000 0002000 00000000116 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	100003001,100003002,100003003	500000	500000	LR45-MJCN-KZJ9-CKLZ-IN4M	f
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3677.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3678.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3679.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3680.dat                                                                                            0000600 0004000 0002000 00000000056 14271176511 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43		Призрак	2207301628	First nick
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3681.dat                                                                                            0000600 0004000 0002000 00000000022 14271176511 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43	0	4	0	55	
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3682.dat                                                                                            0000600 0004000 0002000 00000000736 14271176511 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43	55	3	2	0	18	0	6	19	70	0	0	0	31						\\x000a000000000d0000000020000000001c000000002c00000000280000000026000000000f00000001010000000102000000001b000000001d000000000100000000020000000003000000000400000000050000000006000000001a00000001000000100100000020001000000000370000000016000000005c000000005b0000000025000000004000000000410000000015000000001f00000000230000000021000000000c000000000e0000000031000000003200000000460000000042000000000b000000003a00000000ffffffff0045000000
\.


                                  3683.dat                                                                                            0000600 0004000 0002000 00000000036 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43	0	0	0	0	0	0	0	0	0	0	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3684.dat                                                                                            0000600 0004000 0002000 00000006460 14271176511 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        70749	43	1200027000	Skull Package - Recarregamento [Active]	2209180332	3	2
280	43	1001001013	P	2208291632	2	2
281	43	1001002018	Reinforced Combo Hide (+30% Gold) [R]	2208291632	2	2
70737	43	1102003007	Reinforced Headgear	2209180331	2	2
282	43	702015025	DUALKNIFE M9 DIGITAL	2208291634	1	2
283	43	100003014	Title reward	10	1	1
284	43	100003013	Title reward	10	1	1
285	43	702015001	Title reward	10	1	1
286	43	702001004	Title reward	10	1	1
287	43	100003036	Title reward	10	1	1
70767	43	100003045	M4 SR-16 F.C.	2208240353	1	2
70734	43	702001083	Nunchaku	2208190330	1	2
70739	43	1200044000	BulletProofVestPlus[p90 G Set] [Active]	2208190332	3	2
70740	43	1300030030	5% Defense Up	1	3	1
70732	43	1300044030	BulletProofVestPlus[p90 G Set]	1	3	1
70765	43	100003264	Famas G2 M203 E-Sport2	2208240353	1	2
70743	43	1300036030	Damage & Accuracy Up, Move Down	1	3	1
70745	43	1200040000	HP Up 5% [Active]	2208190332	3	2
70725	43	100003450	AK 47 DIGITAL	2208190217	1	2
70736	43	1001002051	Hide Kopassus [R]	2208190331	2	2
70738	43	1200078000	Hollow Point Plus (Invisible) [E]	1	3	1
70768	43	100003103	M4 SR-16 D Hunter	2208240353	1	2
70742	43	1200031000	Damage Up, Accuracy Down [Active]	2208190332	3	2
70733	43	1300080030	Shorten Respawn 100%[p90 G Set]	1	3	1
70751	43	1200004000	130% Point UP [Active]	2208190332	3	2
70752	43	300005232	Barrett M82A1 Nusantara	2208190333	1	2
70753	43	601002069	Kriss Vector SDP DarkDays	2208190333	1	2
70754	43	803007066	Bola de Futebol 2016	2208190333	1	2
70755	43	904007043	Medical Kit Kurma	2208190333	1	2
70756	43	1103003008	Yellow Star Beret	2208190336	2	2
70757	43	100003277	AUG A3 Blue Diamond	2208240232	1	2
70758	43	100003432	AUG A3 Blue	2208240247	1	2
70759	43	100003431	AUG HBAR PANDORA	2208240352	1	2
70760	43	300005300	CHEYTAC M200 DIGITAL	2208240352	1	2
70761	43	300005285	Cheytac M200 Nevasca	2208240352	1	2
70762	43	300005325	Tactilite T2 Milkyway	2208240352	1	2
70763	43	100003261	AUG A3 Midnight2	2208240352	1	2
70764	43	100003291	AUG A3 PBIC2016	2208240352	1	2
70769	43	200004265	Kriss S.V Midnigth2	2208240353	1	2
70770	43	200004288	P90 Ext. Silence Demonic	2208240353	1	2
70771	43	300005113	Cheytac M200 4Game SE	2208240354	1	2
70772	43	300005159	AS 50 G.	2208240354	1	2
70773	43	300005167	Cheytac M200 Demonic	2208240354	1	2
70774	43	300005158	Cheytac M200 Midnight2	2208240354	1	2
70775	43	300005163	Tactilite T2 PBWC2016	2208240354	1	2
70776	43	300005146	PGM-Hecate2 G.	2208240355	1	2
70777	43	500010013	Ultimax 100 Madness	2208240355	1	2
288	43	100003015	Title reward	10	1	1
289	43	1103003001	Title reward	1	2	3
290	43	702001007	Title reward	10	1	1
291	43	300005006	Title reward	10	1	1
292	43	601013001	Title reward	10	1	1
293	43	601014001	Title reward	10	1	1
294	43	601014002	Title reward	10	1	1
295	43	300005024	Title reward	10	1	1
296	43	300005005	Title reward	10	1	1
297	43	1103003003	Title reward	1	2	3
298	43	1103003005	Title reward	1	2	3
299	43	200004007	Title reward	10	1	1
300	43	200004009	Title reward	10	1	1
301	43	803007004	Title reward	10	1	1
302	43	400006004	Title reward	10	1	1
303	43	200004011	Title reward	10	1	1
304	43	904007005	Title reward	10	1	1
305	43	400006003	Title reward	10	1	1
306	43	200004013	Title reward	10	1	1
307	43	1103003002	Title reward	1	2	3
308	43	1103003004	Title reward	1	2	3
309	43	1300028030	MAX HP Up 10%	1	3	1
311	43	1200026000	Quick Change Weapon[Beyond Set] [Active]	2208291700	3	2
\.


                                                                                                                                                                                                                3685.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3686.dat                                                                                            0000600 0004000 0002000 00000000042 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43	0	0	0	0	0	\\x	\\x	\\x	\\x
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3687.dat                                                                                            0000600 0004000 0002000 00000000041 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        43	4	29	19	35184372088830	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3712.dat                                                                                            0000600 0004000 0002000 00000565040 14271176511 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10003502	100003001	SG-550 Ext.	0	1000	500	2	1	2	0	8	0
10003501	100003001	SG-550 Ext.	0	1000	100	2	1	2	0	8	0
10003302	100003002	AK-47 Ext.	0	1000	500	2	1	2	0	0	0
10003301	100003002	AK-47 Ext.	0	1000	100	2	1	2	0	0	0
10000402	100003003	M4A1 Ext.	0	1000	500	1	1	2	0	0	0
10000401	100003003	M4A1 Ext.	0	1000	100	1	1	2	0	0	0
10002701	100003004	K-2 Ext.	0	1000	100	2	1	2	0	0	0
10002702	100003004	K-2 Ext.	0	1000	500	2	1	2	0	0	0
10002901	100003005	F2000 Ext.	0	1000	100	2	1	2	0	0	0
10002902	100003005	F2000 Ext.	0	1000	500	1	1	2	0	0	0
10018702	100003010	M4A1 Camoflage with Silencer	0	1000	86400	2	1	2	0	0	0
10018701	100003010	M4A1 Camoflage with Silencer	0	1000	2592000	2	1	2	0	0	0
10018703	100003010	M4A1 Camoflage with Silencer	0	1000	604800	2	1	2	0	0	0
10000101	100003011	K-201 Ext.	0	1000	100	1	1	2	0	0	0
10000102	100003011	K-201 Ext.	0	1000	500	2	1	2	0	0	0
10000201	100003013	G36C Ext.	0	1000	100	2	1	2	0	10	0
10000202	100003013	G36C Ext.	0	1000	500	1	1	2	0	10	0
10018802	100003014	SG-550 Camoflage	0	1000	86400	2	1	2	0	0	0
10018801	100003014	SG-550 Camoflage	0	1000	2592000	2	1	2	0	0	0
10018803	100003014	SG-550 Camoflage	0	1000	604800	2	1	2	0	0	0
10000601	100003015	AK SOPMOD Ext.	0	1000	100	1	1	2	0	12	0
10000602	100003015	AK SOPMOD Ext.	0	1000	500	1	1	2	0	12	0
10000902	100003017	AK-47 Silver	0	1000	500	1	1	2	0	0	0
10000901	100003017	AK-47 Silver	0	1000	100	1	1	2	0	0	0
10001001	100003019	SG-550 Silver	0	1000	100	1	1	2	0	0	0
10001002	100003019	SG-550 Silver	0	1000	500	1	1	2	0	0	0
10001901	100003021	M4A1 Silver	0	1000	100	2	1	2	0	0	0
10001902	100003021	M4A1 Silver	0	1000	500	2	1	2	0	0	0
10002002	100003023	M4A1 Gold	0	1000	500	1	1	2	0	0	0
10002001	100003023	M4A1 Gold	0	1000	100	2	1	2	0	0	0
10002102	100003029	G36C Silver	0	1000	500	2	1	2	0	0	0
10002101	100003029	G36C Silver	0	1000	100	2	1	2	0	0	0
10002202	100003036	AUG A3	0	1000	500	2	1	2	6	12	0
10002201	100003036	AUG A3	0	1000	100	2	1	2	6	12	0
10018903	100003037	AUG A3 Gold	0	1000	604800	2	1	2	0	0	0
10018901	100003037	AUG A3 Gold	0	1000	2592000	2	1	2	0	0	0
10018902	100003037	AUG A3 Gold	0	1000	86400	2	1	2	0	0	0
10019002	100003038	G36C D.	0	1000	86400	2	1	2	0	0	0
10019003	100003038	G36C D.	0	1000	604800	2	1	2	0	0	0
10019001	100003038	G36C D.	0	1000	2592000	2	1	2	0	0	0
10019102	100003039	AK SOPMOD D	0	1000	86400	2	1	2	0	0	0
10019101	100003039	AK SOPMOD D	0	1000	2592000	2	1	2	0	0	0
10019103	100003039	AK SOPMOD D	0	1000	2592000	2	1	2	0	0	0
10019201	100003040	AUG A3 D	0	1000	2592000	2	1	2	0	0	0
10019203	100003040	AUG A3 D	0	1000	604800	2	1	2	0	0	0
10019202	100003040	AUG A3 D	0	1000	86400	2	1	2	0	0	0
10019302	100003041	AK SOPMOD CG.	0	1000	86400	2	1	2	0	0	0
10019301	100003041	AK SOPMOD CG.	0	1000	2592000	2	1	2	0	0	0
10019303	100003041	AK SOPMOD CG.	0	1000	604800	2	1	2	0	0	0
10019401	100003045	M4 SR-16 F.C.	0	1000	2592000	2	1	2	0	0	0
10019402	100003045	M4 SR-16 F.C.	0	1000	86400	2	1	2	0	0	0
10019403	100003045	M4 SR-16 F.C.	0	1000	604800	2	1	2	0	0	0
10000502	100003046	F2000 Silver	0	1000	500	1	1	2	0	0	0
10000501	100003046	F2000 Silver	0	1000	100	1	1	2	0	0	0
10019502	100003048	AUG A3 Black	0	1000	86400	2	1	2	0	0	0
10019503	100003048	AUG A3 Black	0	1000	604800	2	1	2	0	0	0
10019501	100003048	AUG A3 Black	0	1000	2592000	2	1	2	0	0	0
10000801	100003049	FAMAS G2	0	1000	100	1	1	2	0	0	0
10000802	100003049	FAMAS G2	0	1000	500	1	1	2	0	0	0
10019602	100003051	FAMAS G2 Sniper	0	1000	86400	2	1	2	0	0	0
10019601	100003051	FAMAS G2 Sniper	0	1000	2592000	2	1	2	0	0	0
10019603	100003051	FAMAS G2 Sniper	0	1000	604800	2	1	2	0	0	0
10019703	100003052	FAMAS G2 M203	0	1000	604800	2	1	2	0	0	0
10019701	100003052	FAMAS G2 M203	0	1000	2592000	2	1	2	0	0	0
10019702	100003052	FAMAS G2 M203	0	1000	86400	2	1	2	0	0	0
10001202	100003053	SS2-V4 Para Sniper	0	1000	500	2	1	2	0	0	0
10001201	100003053	SS2-V4 Para Sniper	0	1000	100	1	1	2	0	0	0
10001301	100003054	AK-47 Gold D	0	1000	100	2	1	2	0	0	0
10001302	100003054	AK-47 Gold D	0	1000	500	2	1	2	0	0	0
10001502	100003057	Vz. 52	0	1000	500	1	1	2	0	0	0
10001501	100003057	Vz. 52	0	1000	100	2	1	2	0	0	0
10001702	100003061	SS2-V4 Para Sniper Gold	0	1000	500	2	1	2	0	0	0
10001701	100003061	SS2-V4 Para Sniper Gold	0	1000	2592000	2	1	2	0	0	0
10019802	100003062	FAMAS G2 Commando E-Sports	0	1000	86400	2	1	2	0	0	0
10019803	100003062	FAMAS G2 Commando E-Sports	0	1000	604800	2	1	2	0	0	0
10019801	100003062	FAMAS G2 Commando E-Sports	0	1000	2592000	2	1	2	0	0	0
10019903	100003063	AUG A3 E-Sports	0	1000	604800	2	1	2	0	0	0
10019902	100003063	AUG A3 E-Sports	0	1000	86400	2	1	2	0	0	0
10019901	100003063	AUG A3 E-Sports	0	1000	2592000	2	1	2	0	0	0
10020001	100003064	Famas G2 Commando Gold	0	1000	2592000	2	1	2	0	0	0
10020003	100003064	Famas G2 Commando Gold	0	1000	604800	2	1	2	0	0	0
10020002	100003064	Famas G2 Commando Gold	0	1000	86400	2	1	2	0	0	0
10020102	100003065	AUG A3 Blue	0	1000	86400	2	1	2	0	0	0
10020103	100003065	AUG A3 Blue	0	1000	604800	2	1	2	0	0	0
10020101	100003065	AUG A3 Blue	0	1000	2592000	2	1	2	0	0	0
10020202	100003068	AK-47 FC Red	0	1000	2592000	2	1	2	0	0	0
10020203	100003068	AK-47 FC Red	0	1000	604800	2	1	2	0	0	0
10020201	100003068	AK-47 FC Red	0	1000	2592000	2	1	2	0	0	0
10002801	100003069	SCAR-H CQC	0	1000	100	2	1	2	0	0	0
10002802	100003069	SCAR-H CQC	0	1000	500	2	1	2	0	0	0
10020302	100003071	AUG A3 PBIC	0	1000	86400	2	1	2	0	0	0
10020301	100003071	AUG A3 PBIC	0	1000	2592000	2	1	2	0	0	0
10020303	100003071	AUG A3 PBIC	0	1000	604800	2	1	2	0	0	0
10003002	100003086	AK-47 Goddess	0	1000	500	2	1	2	0	0	0
10003001	100003086	AK-47 Goddess	0	1000	100	2	1	2	0	0	0
10003101	100003087	Famas G2 Silver	0	1000	100	2	1	2	0	0	0
10003102	100003087	Famas G2 Silver	0	1000	500	2	1	2	0	0	0
10020402	100003090	Famas G2/M	0	1000	86400	2	1	2	0	0	0
10020403	100003090	Famas G2/M	0	1000	604800	2	1	2	0	0	0
10020401	100003090	Famas G2/M	0	1000	2592000	2	1	2	0	0	0
10020602	100003092	AK SOPMOD R	0	1000	86400	2	1	2	0	0	0
10020603	100003092	AK SOPMOD R	0	1000	604800	2	1	2	0	0	0
10020601	100003092	AK SOPMOD R	0	1000	2592000	2	1	2	0	0	0
10020701	100003093	AUG A3 Blitz	0	1000	2592000	2	1	2	0	0	0
10020702	100003093	AUG A3 Blitz	0	1000	86400	2	1	2	0	0	0
10020703	100003093	AUG A3 Blitz	0	1000	2592000	2	1	2	0	0	0
10020801	100003094	SCAR-L Carbine	0	1000	2592000	2	1	2	0	0	0
10020803	100003094	SCAR-L Carbine	0	1000	604800	2	1	2	0	0	0
10020802	100003094	SCAR-L Carbine	0	1000	86400	2	1	2	0	0	0
10020901	100003095	SCAR-L Recon	0	1000	2592000	2	1	2	0	0	0
10020902	100003095	SCAR-L Recon	0	1000	86400	2	1	2	0	0	0
10020903	100003095	SCAR-L Recon	0	1000	604800	2	1	2	0	0	0
10021002	100003096	SCAR-L FC	0	1000	86400	2	1	2	0	0	0
10021003	100003096	SCAR-L FC	0	1000	604800	2	1	2	0	0	0
10021001	100003096	SCAR-L FC	0	1000	2592000	2	1	2	0	0	0
10021103	100003097	AUG A3 GRS	0	1000	604800	2	1	2	0	0	0
10021101	100003097	AUG A3 GRS	0	1000	2592000	2	1	2	0	0	0
10021102	100003097	AUG A3 GRS	0	1000	86400	2	1	2	0	0	0
10021201	100003098	M4A1 GRS	0	1000	2592000	2	1	2	0	0	0
10021203	100003098	M4A1 GRS	0	1000	604800	2	1	2	0	0	0
10021202	100003098	M4A1 GRS	0	1000	86400	2	1	2	0	0	0
10021303	100003099	AK SOPMOD GRS	0	1000	604800	2	1	2	0	0	0
10021302	100003099	AK SOPMOD GRS	0	1000	86400	2	1	2	0	0	0
10021301	100003099	AK SOPMOD GRS	0	1000	2592000	2	1	2	0	0	0
10021402	100003100	Famas G2 GRS	0	1000	86400	2	1	2	0	0	0
10021403	100003100	Famas G2 GRS	0	1000	604800	2	1	2	0	0	0
10021401	100003100	Famas G2 GRS	0	1000	2592000	2	1	2	0	0	0
10001401	100003102	HK-417	0	1000	100	1	1	2	0	0	0
10001402	100003102	HK-417	0	1000	500	2	1	2	0	0	0
10021502	100003103	M4 SR-16 D Hunter	0	1000	86400	2	1	2	0	0	0
10021501	100003103	M4 SR-16 D Hunter	0	1000	2592000	2	1	2	0	0	0
10021503	100003103	M4 SR-16 D Hunter	0	1000	604800	2	1	2	0	0	0
10021601	100003104	AUG A3 GSL	0	1000	2592000	2	1	2	0	0	0
10021602	100003104	AUG A3 GSL	0	1000	86400	2	1	2	0	0	0
10021603	100003104	AUG A3 GSL	0	1000	604800	2	1	2	0	0	0
10021702	100003105	Famas G2 Commando GSL	0	1000	86400	2	1	2	0	0	0
10021703	100003105	Famas G2 Commando GSL	0	1000	604800	2	1	2	0	0	0
10021701	100003105	Famas G2 Commando GSL	0	1000	2592000	2	1	2	0	0	0
10021803	100003111	AUG A3 Bralizian Edition	0	1000	604800	2	1	2	0	0	0
10021801	100003111	AUG A3 Bralizian Edition	0	1000	2592000	2	1	2	0	0	0
10021802	100003111	AUG A3 Bralizian Edition	0	1000	86400	2	1	2	0	0	0
10021902	100003114	M4A1 Elite	0	1000	86400	2	1	2	0	0	0
10021903	100003114	M4A1 Elite	0	1000	604800	2	1	2	0	0	0
10021901	100003114	M4A1 Elite	0	1000	2592000	2	1	2	0	0	0
10002301	100003115	AN-94	0	1000	100	2	1	2	0	0	0
10002302	100003115	AN-94	0	1000	500	2	1	2	0	0	0
10002402	100003116	F2000 Reload	0	1000	500	2	1	2	0	0	0
10002401	100003116	F2000 Reload	0	1000	100	2	1	2	0	0	0
10002602	100003117	SG550 Reload	0	1000	500	2	1	2	0	0	0
10002601	100003117	SG550 Reload	0	1000	100	2	1	2	0	0	0
10003602	100003118	Pindad SS2-V4 Para Sniper Reload	0	1000	604800	2	1	2	0	0	0
10003603	100003118	Pindad SS2-V4 Para Sniper Reload	0	1000	2592000	2	1	2	0	0	0
10003601	100003118	Pindad SS2-V4 Para Sniper Reload	0	1000	2592000	2	1	2	0	0	0
10003703	100003119	AK-47 Elite	0	1000	2592000	2	1	2	0	0	0
10003701	100003119	AK-47 Elite	0	1000	86400	2	1	2	0	0	0
10003702	100003119	AK-47 Elite	0	1000	604800	2	1	2	0	0	0
10003802	100003120	AUG A3 PBIC2013	0	1000	604800	2	1	2	0	0	0
10003803	100003120	AUG A3 PBIC2013	0	1000	2592000	2	1	2	0	0	0
10003801	100003120	AUG A3 PBIC2013	0	1000	86400	2	1	2	0	0	0
10003902	100003121	M4A1 PBIC2013	0	1000	604800	2	1	2	0	0	0
10003901	100003121	M4A1 PBIC2013	0	1000	86400	2	1	2	0	0	0
10003903	100003121	M4A1 PBIC2013	0	1000	2592000	2	1	2	0	0	0
10004002	100003122	AK47 PBIC2013	0	1000	604800	2	1	2	0	0	0
10004001	100003122	AK47 PBIC2013	0	1000	86400	2	1	2	0	0	0
10004003	100003122	AK47 PBIC2013	0	1000	2592000	2	1	2	0	0	0
10003201	100003123	TAR-21	0	1000	100	2	1	2	0	0	0
10003202	100003123	TAR-21	0	1000	500	2	1	2	0	0	0
10004101	100003125	AK-47 F.C	0	1000	86400	2	1	2	0	0	0
10004102	100003125	AK-47 F.C	0	1000	604800	2	1	2	0	0	0
10004103	100003125	AK-47 F.C	0	1000	2592000	2	1	2	0	0	0
10004202	100003126	AK SOPMOD CG	0	1000	604800	2	1	2	0	0	0
10004203	100003126	AK SOPMOD CG	0	1000	2592000	2	1	2	0	0	0
10004201	100003126	AK SOPMOD CG	0	1000	86400	2	1	2	0	0	0
10004302	100003128	AUG A3 Azerbaijan	0	1000	604800	2	1	2	0	0	0
10004303	100003128	AUG A3 Azerbaijan	0	1000	2592000	2	1	2	0	0	0
10004301	100003128	AUG A3 Azerbaijan	0	1000	86400	2	1	2	0	0	0
10004403	100003129	AUG A3 Bloody	0	1000	2592000	2	1	2	0	0	0
10004401	100003129	AUG A3 Bloody	0	1000	86400	2	1	2	0	0	0
10004402	100003129	AUG A3 Bloody	0	1000	604800	2	1	2	0	0	0
10004502	100003130	AUG A3 G Bloody	0	1000	2592000	2	1	2	0	0	0
10004503	100003130	AUG A3 G Bloody	0	1000	2592000	2	1	2	0	0	0
10004501	100003130	AUG A3 G Bloody	0	1000	86400	2	1	2	0	0	0
10004602	100003131	AUG A3 LATIN3	0	1000	604800	2	1	2	0	0	0
10004603	100003131	AUG A3 LATIN3	0	1000	2592000	2	1	2	0	0	0
10004601	100003131	AUG A3 LATIN3	0	1000	86400	2	1	2	0	0	0
10004703	100003142	AUG A3 TH 1st Anniversary	0	1000	2592000	2	1	2	0	0	0
10004701	100003142	AUG A3 TH 1st Anniversary	0	1000	86400	2	1	2	0	0	0
10004702	100003142	AUG A3 TH 1st Anniversary	0	1000	2592000	2	1	2	0	0	0
10004801	100003143	FG 42	0	1000	86400	2	1	2	0	0	0
10004802	100003143	FG 42	0	1000	604800	2	1	2	0	0	0
10004803	100003143	FG 42	0	1000	2592000	2	1	2	0	0	0
10004901	100003144	AUG A3 R	0	1000	86400	2	1	2	0	0	0
10004902	100003144	AUG A3 R	0	1000	604800	2	1	2	0	0	0
10004903	100003144	AUG A3 R	0	1000	2592000	2	1	2	0	0	0
10005001	100003146	G36C Elite	0	1000	86400	2	1	2	0	0	0
10005002	100003146	G36C Elite	0	1000	604800	2	1	2	0	0	0
10005003	100003146	G36C Elite	0	1000	2592000	2	1	2	0	0	0
10005102	100003147	AUG A3 Inferno	0	1000	604800	2	1	2	0	0	0
10005101	100003147	AUG A3 Inferno	0	1000	86400	2	1	2	0	0	0
10005103	100003147	AUG A3 Inferno	0	1000	2592000	2	1	2	0	0	0
10005201	100003148	AUG A3 PBNC5	0	1000	2592000	2	1	2	0	0	0
10005202	100003148	AUG A3 PBNC5	0	1000	604800	2	1	2	0	0	0
10005203	100003148	AUG A3 PBNC5	0	1000	2592000	2	1	2	0	0	0
10005303	100003149	AUG A3 GSL2014	0	1000	2592000	2	1	2	0	0	0
10005301	100003149	AUG A3 GSL2014	0	1000	86400	2	1	2	0	0	0
10005302	100003149	AUG A3 GSL2014	0	1000	604800	2	1	2	0	0	0
10006101	100003151	TAR-21 BR Camo	0	1000	86400	2	1	2	0	0	0
10006103	100003151	TAR-21 BR Camo	0	1000	2592000	2	1	2	0	0	0
10006102	100003151	TAR-21 BR Camo	0	1000	604800	2	1	2	0	0	0
10005403	100003152	AK SOPMOD BR Camo	0	1000	2592000	2	1	2	0	0	0
10005402	100003152	AK SOPMOD BR Camo	0	1000	604800	2	1	2	0	0	0
10005401	100003152	AK SOPMOD BR Camo	0	1000	86400	2	1	2	0	0	0
10001801	100003153	SC-2010	0	1000	100	2	1	2	0	0	0
10001802	100003153	SC-2010	0	1000	500	2	1	2	0	0	0
10005502	100003154	SC-2010 Gold	0	1000	604800	2	1	2	0	0	0
10005501	100003154	SC-2010 Gold	0	1000	86400	2	1	2	0	0	0
10005503	100003154	SC-2010 Gold	0	1000	2592000	2	1	2	0	0	0
10005603	100003155	AUG A3 Brazuca	0	1000	2592000	2	1	2	0	0	0
10005601	100003155	AUG A3 Brazuca	0	1000	86400	2	1	2	0	0	0
10005602	100003155	AUG A3 Brazuca	0	1000	604800	2	1	2	0	0	0
10005701	100003157	AUG A3 Champion	0	1000	86400	2	1	2	0	0	0
10005703	100003157	AUG A3 Champion	0	1000	2592000	2	1	2	0	0	0
10005702	100003157	AUG A3 Champion	0	1000	604800	2	1	2	0	0	0
10005803	100003158	AUG A3 W.O.E	0	1000	2592000	2	1	2	0	0	0
10005801	100003158	AUG A3 W.O.E	0	1000	86400	2	1	2	0	0	0
10005802	100003158	AUG A3 W.O.E	0	1000	604800	2	1	2	0	0	0
10005901	100003159	AUG A3 PBIC2014	0	1000	86400	2	1	2	0	0	0
10005903	100003159	AUG A3 PBIC2014	0	1000	2592000	2	1	2	0	0	0
10005902	100003159	AUG A3 PBIC2014	0	1000	2592000	2	1	2	0	0	0
10006003	100003160	AUG A3 BR 4th Anniversary	0	1000	2592000	2	1	2	0	0	0
10006001	100003160	AUG A3 BR 4th Anniversary	0	1000	86400	2	1	2	0	0	0
10006002	100003160	AUG A3 BR 4th Anniversary	0	1000	2592000	2	1	2	0	0	0
10006201	100003163	AUG A3 PC Cafe	0	1000	100	2	1	2	4	0	0
10006202	100003163	AUG A3 PC Cafe	0	1000	500	2	1	2	4	0	0
10006303	100003164	AUG A3 G E-Sport	0	1000	604800	2	1	2	0	0	0
10006301	100003164	AUG A3 G E-Sport	0	1000	2592000	2	1	2	0	0	0
10006302	100003164	AUG A3 G E-Sport	0	1000	86400	2	1	2	0	0	0
10006402	100003165	AUG A3 Toy	0	1000	86400	2	1	2	0	0	0
10006401	100003165	AUG A3 Toy	0	1000	2592000	2	1	2	0	0	0
10006403	100003165	AUG A3 Toy	0	1000	604800	2	1	2	0	0	0
10006502	100003167	AN-94 Gold	0	1000	86400	2	1	2	0	0	0
10006503	100003167	AN-94 Gold	0	1000	604800	2	1	2	0	0	0
10006501	100003167	AN-94 Gold	0	1000	2592000	2	1	2	0	0	0
10006603	100003168	HK-417 Gold	0	1000	604800	2	1	2	0	0	0
10006601	100003168	HK-417 Gold	0	1000	2592000	2	1	2	0	0	0
10006602	100003168	HK-417 Gold	0	1000	86400	2	1	2	0	0	0
10006702	100003169	TAR-21 Gold	0	1000	86400	2	1	2	0	0	0
10006703	100003169	TAR-21 Gold	0	1000	604800	2	1	2	0	0	0
10006701	100003169	TAR-21 Gold	0	1000	2592000	2	1	2	0	0	0
10006802	100003170	SCAR-L Carbine Gold	0	1000	86400	2	1	2	0	0	0
10006803	100003170	SCAR-L Carbine Gold	0	1000	604800	2	1	2	0	0	0
10006801	100003170	SCAR-L Carbine Gold	0	1000	2592000	2	1	2	0	0	0
10006901	100003171	AUG A3 LATIN4	0	1000	2592000	2	1	2	0	0	0
10006902	100003171	AUG A3 LATIN4	0	1000	2592000	2	1	2	0	0	0
10006903	100003171	AUG A3 LATIN4	0	1000	604800	2	1	2	0	0	0
10007002	100003173	AUG A3 Cangaceiro	0	1000	86400	2	1	2	0	0	0
10007003	100003173	AUG A3 Cangaceiro	0	1000	604800	2	1	2	0	0	0
10007001	100003173	AUG A3 Cangaceiro	0	1000	2592000	2	1	2	0	0	0
10000702	100003174	XM8	0	1000	500	1	1	2	0	0	0
10000701	100003174	XM8	0	1000	100	1	1	2	0	0	0
10007103	100003175	SCAR-L Carbine D.	0	1000	604800	2	1	2	0	0	0
10007101	100003175	SCAR-L Carbine D.	0	1000	2592000	2	1	2	0	0	0
10007102	100003175	SCAR-L Carbine D.	0	1000	86400	2	1	2	0	0	0
10007203	100003176	SCAR-L Recon D.	0	1000	604800	2	1	2	0	0	0
10007201	100003176	SCAR-L Recon D.	0	1000	2592000	2	1	2	0	0	0
10007202	100003176	SCAR-L Recon D.	0	1000	86400	2	1	2	0	0	0
10007302	100003177	XM8 GOLD	0	1000	86400	2	1	2	0	0	0
10007303	100003177	XM8 GOLD	0	1000	604800	2	1	2	0	0	0
10007301	100003177	XM8 GOLD	0	1000	2592000	2	1	2	0	0	0
10007401	100003178	AUG A3 CoupleBreaker	0	1000	2592000	2	1	2	0	0	0
10007403	100003178	AUG A3 CoupleBreaker	0	1000	2592000	2	1	2	0	0	0
10007402	100003178	AUG A3 CoupleBreaker	0	1000	86400	2	1	2	0	0	0
10007501	100003180	AUG A3 ANC 2015	0	1000	2592000	2	1	2	0	0	0
10007502	100003180	AUG A3 ANC 2015	0	1000	86400	2	1	2	0	0	0
10007503	100003180	AUG A3 ANC 2015	0	1000	604800	2	1	2	0	0	0
10007602	100003181	AUG A3 Sheep	0	1000	86400	2	1	2	0	0	0
10007601	100003181	AUG A3 Sheep	0	1000	2592000	2	1	2	0	0	0
10007603	100003181	AUG A3 Sheep	0	1000	604800	2	1	2	0	0	0
10007702	100003182	TAR-21 Sheep	0	1000	86400	2	1	2	0	0	0
10007703	100003182	TAR-21 Sheep	0	1000	604800	2	1	2	0	0	0
10007701	100003182	TAR-21 Sheep	0	1000	2592000	2	1	2	0	0	0
10007801	100003183	AUG A3 GRS2	0	1000	2592000	2	1	2	0	0	0
10007803	100003183	AUG A3 GRS2	0	1000	604800	2	1	2	0	0	0
10007802	100003183	AUG A3 GRS2	0	1000	86400	2	1	2	0	0	0
10007903	100003184	AUG A3 Newborn 2015	0	1000	604800	2	1	2	0	0	0
10007901	100003184	AUG A3 Newborn 2015	0	1000	2592000	2	1	2	0	0	0
10007902	100003184	AUG A3 Newborn 2015	0	1000	86400	2	1	2	0	0	0
10008002	100003185	SC-2010 Newborn 2015	0	1000	86400	2	1	2	0	0	0
10008001	100003185	SC-2010 Newborn 2015	0	1000	2592000	2	1	2	0	0	0
10008003	100003185	SC-2010 Newborn 2015	0	1000	604800	2	1	2	0	0	0
10008101	100003186	AUG A3 GSL2015	0	1000	2592000	2	1	2	0	0	0
10008102	100003186	AUG A3 GSL2015	0	1000	86400	2	1	2	0	0	0
10008103	100003186	AUG A3 GSL2015	0	1000	604800	2	1	2	0	0	0
10008202	100003188	AUG A3 Ongame	0	1000	86400	2	1	2	0	0	0
10008203	100003188	AUG A3 Ongame	0	1000	604800	2	1	2	0	0	0
10008201	100003188	AUG A3 Ongame	0	1000	2592000	2	1	2	0	0	0
10008301	100003189	AUG A3 Redemption	0	1000	2592000	2	1	2	0	0	0
10008303	100003189	AUG A3 Redemption	0	1000	604800	2	1	2	0	0	0
10008302	100003189	AUG A3 Redemption	0	1000	86400	2	1	2	0	0	0
10008401	100003190	AUG A3 Summer	0	1000	2592000	2	1	2	1	0	0
10008403	100003190	AUG A3 Summer	0	1000	604800	2	1	2	1	0	0
10008402	100003190	AUG A3 Summer	0	1000	86400	2	1	2	1	0	0
10008501	100003191	SC-2010 Rose	0	1000	2592000	2	1	2	0	0	0
10008502	100003191	SC-2010 Rose	0	1000	86400	2	1	2	0	0	0
10008503	100003191	SC-2010 Rose	0	1000	604800	2	1	2	0	0	0
10008601	100003192	AUG A3 Rose	0	1000	2592000	2	1	2	0	0	0
10008603	100003192	AUG A3 Rose	0	1000	2592000	2	1	2	0	0	0
10008602	100003192	AUG A3 Rose	0	1000	86400	2	1	2	0	0	0
10008702	100003193	AUG A3 LionFlame	0	1000	86400	2	1	2	0	0	0
10008703	100003193	AUG A3 LionFlame	0	1000	604800	2	1	2	0	0	0
10008701	100003193	AUG A3 LionFlame	0	1000	2592000	2	1	2	0	0	0
10008802	100003194	AUG A3 Independência	0	1000	86400	2	1	2	0	0	0
10008801	100003194	AUG A3 Independência	0	1000	2592000	2	1	2	0	0	0
10008803	100003194	AUG A3 Independência	0	1000	604800	2	1	2	0	0	0
10008902	100003195	AUG A3 Brazil	0	1000	86400	2	1	2	0	0	0
10008901	100003195	AUG A3 Brazil	0	1000	2592000	2	1	2	0	0	0
10008903	100003195	AUG A3 Brazil	0	1000	604800	2	1	2	0	0	0
10009001	100003196	AUG A3 PBST2015	0	1000	2592000	2	1	2	0	0	0
10009003	100003196	AUG A3 PBST2015	0	1000	604800	2	1	2	0	0	0
10009002	100003196	AUG A3 PBST2015	0	1000	86400	2	1	2	0	0	0
10009101	100003197	AUG A3 4Game	0	1000	2592000	2	1	2	0	0	0
10009102	100003197	AUG A3 4Game	0	1000	86400	2	1	2	0	0	0
10009103	100003197	AUG A3 4Game	0	1000	604800	2	1	2	0	0	0
10009203	100003198	AUG A3 4Game SE	0	1000	604800	2	1	2	0	0	0
10009202	100003198	AUG A3 4Game SE	0	1000	86400	2	1	2	0	0	0
10009201	100003198	AUG A3 4Game SE	0	1000	2592000	2	1	2	0	0	0
10009303	100003199	AUG A3 México	0	1000	2592000	2	1	2	0	0	0
10009301	100003199	AUG A3 México	0	1000	2592000	2	1	2	0	0	0
10009302	100003199	AUG A3 México	0	1000	86400	2	1	2	0	0	0
10009401	100003200	AUG A3 Bolivia	0	1000	2592000	2	1	2	0	0	0
10009402	100003200	AUG A3 Bolivia	0	1000	86400	2	1	2	0	0	0
10009403	100003200	AUG A3 Bolivia	0	1000	604800	2	1	2	0	0	0
10009502	100003201	AUG A3 Equador	0	1000	86400	2	1	2	0	0	0
10009503	100003201	AUG A3 Equador	0	1000	604800	2	1	2	0	0	0
10009501	100003201	AUG A3 Equador	0	1000	2592000	2	1	2	0	0	0
10009602	100003202	AUG A3 Colombia	0	1000	86400	2	1	2	0	0	0
10009603	100003202	AUG A3 Colombia	0	1000	604800	2	1	2	0	0	0
10009601	100003202	AUG A3 Colombia	0	1000	2592000	2	1	2	0	0	0
10009703	100003203	AUG A3 Venezuela	0	1000	604800	2	1	2	0	0	0
10009701	100003203	AUG A3 Venezuela	0	1000	2592000	2	1	2	0	0	0
10009802	100003204	AUG A3 Argentina	0	1000	86400	2	1	2	0	0	0
10009803	100003204	AUG A3 Argentina	0	1000	604800	2	1	2	0	0	0
10009801	100003204	AUG A3 Argentina	0	1000	2592000	2	1	2	0	0	0
10009903	100003205	AUG A3 Chile	0	1000	604800	2	1	2	0	0	0
10009901	100003205	AUG A3 Chile	0	1000	2592000	2	1	2	0	0	0
10009902	100003205	AUG A3 Chile	0	1000	86400	2	1	2	0	0	0
10010101	100003206	AUG A3 Peru	0	1000	604800	2	1	2	0	0	0
10010002	100003206	AUG A3 Peru	0	1000	86400	2	1	2	0	0	0
10010102	100003207	AUG A3 Lebaran2015	0	1000	86400	2	1	2	0	0	0
10010103	100003207	AUG A3 Lebaran2015	0	1000	2592000	2	1	2	0	0	0
10010203	100003209	Vz.52 BlackPearl	0	1000	604800	2	1	2	0	0	0
10010201	100003209	Vz.52 BlackPearl	0	1000	2592000	2	1	2	0	0	0
10010202	100003209	Vz.52 BlackPearl	0	1000	86400	2	1	2	0	0	0
10010303	100003210	AUG A3 Egypt	0	1000	604800	2	1	2	0	0	0
10010301	100003210	AUG A3 Egypt	0	1000	2592000	2	1	2	0	0	0
10010302	100003210	AUG A3 Egypt	0	1000	86400	2	1	2	0	0	0
10010402	100003211	AUG A3 Jordan	0	1000	86400	2	1	2	0	0	0
10010401	100003211	AUG A3 Jordan	0	1000	2592000	2	1	2	0	0	0
10010403	100003211	AUG A3 Jordan	0	1000	604800	2	1	2	0	0	0
10010502	100003212	AUG A3 Saudi	0	1000	86400	2	1	2	0	0	0
10010503	100003212	AUG A3 Saudi	0	1000	604800	2	1	2	0	0	0
10010501	100003212	AUG A3 Saudi	0	1000	2592000	2	1	2	0	0	0
10010603	100003213	AUG A3 UAE	0	1000	604800	2	1	2	0	0	0
10010601	100003213	AUG A3 UAE	0	1000	2592000	2	1	2	0	0	0
10010602	100003213	AUG A3 UAE	0	1000	86400	2	1	2	0	0	0
10010703	100003214	AUG A3 PBNC2015	0	1000	604800	2	1	2	0	0	0
10010702	100003214	AUG A3 PBNC2015	0	1000	86400	2	1	2	0	0	0
10010701	100003214	AUG A3 PBNC2015	0	1000	2592000	2	1	2	0	0	0
10010803	100003215	AUG A3 PBTC2015	0	1000	604800	2	1	2	0	0	0
10010802	100003215	AUG A3 PBTC2015	0	1000	86400	2	1	2	0	0	0
10010801	100003215	AUG A3 PBTC2015	0	1000	2592000	2	1	2	0	0	0
10010902	100003216	AUG A3 Mech	0	1000	86400	2	1	2	0	0	0
10010903	100003216	AUG A3 Mech	0	1000	2592000	2	1	2	0	0	0
10010901	100003216	AUG A3 Mech	0	1000	2592000	2	1	2	0	0	0
10011002	100003217	AUG A3 DarkDays	0	1000	86400	2	1	2	0	0	0
10011003	100003217	AUG A3 DarkDays	0	1000	604800	2	1	2	0	0	0
10011001	100003217	AUG A3 DarkDays	0	1000	2592000	2	1	2	0	0	0
10011102	100003218	SCAR-L  F.C PBNC2015US	0	1000	86400	2	1	2	0	0	0
10011101	100003218	SCAR-L  F.C PBNC2015US	0	1000	2592000	2	1	2	0	0	0
10011103	100003218	SCAR-L  F.C PBNC2015US	0	1000	604800	2	1	2	0	0	0
10011203	100003219	AUG A3 PBIC2015	0	1000	604800	2	1	2	0	0	0
10011202	100003219	AUG A3 PBIC2015	0	1000	86400	2	1	2	0	0	0
10011201	100003219	AUG A3 PBIC2015	0	1000	2592000	2	1	2	0	0	0
10011303	100003221	AK-47 SOPMOD Gold	0	1000	604800	2	1	2	0	0	0
10011302	100003221	AK-47 SOPMOD Gold	0	1000	86400	2	1	2	0	0	0
10011301	100003221	AK-47 SOPMOD Gold	0	1000	2592000	2	1	2	0	0	0
10011401	100003222	AUG A3 VeraCruz	0	1000	2592000	2	1	2	0	0	0
10002502	100003223	M14-EBR	0	1000	500	2	1	2	0	0	0
10002501	100003223	M14-EBR	0	1000	100	2	1	2	0	0	0
10011501	100003224	AUG A3 Basketball	0	1000	2592000	2	1	2	0	0	0
10011601	100003225	AK-47 SOPMOD Medical	0	1000	2592000	2	1	2	1	0	0
10011701	100003226	SC-2010 Medical	0	1000	2592000	2	1	2	0	0	0
10011803	100003227	AUG A3 Cobra	0	1000	604800	2	1	2	0	0	0
10011802	100003227	AUG A3 Cobra	0	1000	2592000	2	1	2	0	0	0
10011801	100003227	AUG A3 Cobra	0	1000	2592000	2	1	2	0	0	0
10011903	100003228	AUG A3 Camo Soldier	0	1000	604800	2	1	2	0	0	0
10011902	100003228	AUG A3 Camo Soldier	0	1000	86400	2	1	2	0	0	0
10011901	100003228	AUG A3 Camo Soldier	0	1000	2592000	2	1	2	0	0	0
10012001	100003229	G36C Ext. Camo Soldier	0	1000	2592000	2	1	2	0	0	0
10012003	100003229	G36C Ext. Camo Soldier	0	1000	604800	2	1	2	0	0	0
10012002	100003229	G36C Ext. Camo Soldier	0	1000	86400	2	1	2	0	0	0
10012102	100003231	AUG A3 Steam	0	1000	86400	2	1	2	0	0	0
10012101	100003231	AUG A3 Steam	0	1000	2592000	2	1	2	0	0	0
10012103	100003231	AUG A3 Steam	0	1000	604800	2	1	2	0	0	0
10012201	100003232	AUG A3 Halloween	0	1000	2592000	2	1	2	0	0	0
10012203	100003232	AUG A3 Halloween	0	1000	604800	2	1	2	0	0	3
10012202	100003232	AUG A3 Halloween	0	1000	86400	2	1	2	0	0	0
10018603	100003233	AUG A3 SPY	0	1000	604800	2	1	2	0	0	0
10018602	100003233	AUG A3 SPY	0	1000	86400	2	1	2	0	0	0
10018601	100003233	AUG A3 SPY	0	1000	2592000	2	1	2	0	0	0
10012302	100003234	AUG A3 Latin5	0	1000	86400	2	1	2	0	0	0
10012301	100003234	AUG A3 Latin5	0	1000	2592000	2	1	2	0	0	0
10012303	100003234	AUG A3 Latin5	0	1000	604800	2	1	2	0	0	0
10012401	100003235	AUG A3 Obsidian	0	1000	2592000	2	1	2	0	0	0
10012403	100003235	AUG A3 Obsidian	0	1000	604800	2	1	2	0	0	0
10012402	100003235	AUG A3 Obsidian	0	1000	2592000	2	1	2	0	0	0
10000301	100003236	K2C	0	1000	100	1	1	2	0	0	0
10000302	100003236	K2C	0	1000	500	1	1	2	0	0	0
10012502	100003238	AUG A3 Spy-Deluxe	0	1000	86400	2	1	2	0	0	0
10012501	100003238	AUG A3 Spy-Deluxe	0	1000	2592000	2	1	2	0	0	0
10012503	100003238	AUG A3 Spy-Deluxe	0	1000	604800	2	1	2	0	0	0
10012603	100003240	AUG A3 DFN	0	1000	604800	2	1	2	0	0	0
10012602	100003240	AUG A3 DFN	0	1000	86400	2	1	2	0	0	0
10012601	100003240	AUG A3 DFN	0	1000	2592000	2	1	2	0	0	0
10012701	100003241	AUG A3 XMAS2015	0	1000	2592000	2	1	2	0	0	0
10012702	100003241	AUG A3 XMAS2015	0	1000	86400	2	1	2	0	0	0
10012703	100003241	AUG A3 XMAS2015	0	1000	604800	2	1	2	0	0	0
10012801	100003242	SC-2010 XMAS2015	0	1000	2592000	2	1	2	0	0	0
10012802	100003242	SC-2010 XMAS2015	0	1000	86400	2	1	2	0	0	0
10012803	100003242	SC-2010 XMAS2015	0	1000	604800	2	1	2	0	0	0
10012901	100003243	AUG A3 Monkey	0	1000	2592000	2	1	2	0	0	0
10012902	100003243	AUG A3 Monkey	0	1000	86400	2	1	2	0	0	0
10012903	100003243	AUG A3 Monkey	0	1000	604800	2	1	2	0	0	0
10013003	100003244	AUG A3 Arena Normal	0	1000	604800	2	1	2	0	0	0
10013002	100003244	AUG A3 Arena Normal	0	1000	86400	2	1	2	0	0	0
10013001	100003244	AUG A3 Arena Normal	0	1000	2592000	2	1	2	0	0	0
10013101	100003245	AUG A3 Arena Deluxe	0	1000	2592000	2	1	2	0	0	0
10013103	100003245	AUG A3 Arena Deluxe	0	1000	604800	2	1	2	0	0	0
10013102	100003245	AUG A3 Arena Deluxe	0	1000	86400	2	1	2	0	0	0
10001102	100003246	AK-12	0	1000	500	1	1	2	0	0	0
10001101	100003246	AK-12	0	1000	100	1	1	2	0	0	0
10013201	100003247	AK-12 Gold	0	1000	2592000	2	1	2	0	0	0
10013202	100003247	AK-12 Gold	0	1000	86400	2	1	2	0	0	0
10013203	100003247	AK-12 Gold	0	1000	604800	2	1	2	0	0	0
10013302	100003248	AUG A3 VeraCruz 2016	0	1000	86400	2	1	2	0	0	0
10013301	100003248	AUG A3 VeraCruz 2016	0	1000	2592000	2	1	2	0	0	0
10013303	100003248	AUG A3 VeraCruz 2016	0	1000	2592000	2	1	2	0	0	0
10013403	100003249	AUG A3 Silence	0	1000	604800	2	1	2	0	0	3
10013402	100003249	AUG A3 Silence	0	1000	86400	2	1	2	0	0	3
10013401	100003249	AUG A3 Silence	0	1000	2592000	2	1	2	0	0	0
10013501	100003250	AUG A3 Cupido	0	1000	2592000	2	1	2	0	0	0
10013502	100003250	AUG A3 Cupido	0	1000	86400	2	1	2	0	0	3
10013503	100003250	AUG A3 Cupido	0	1000	604800	2	1	2	0	0	3
10013603	100003251	AUG A3 Sakura	0	1000	604800	2	1	2	0	0	3
10013601	100003251	AUG A3 Sakura	0	1000	2592000	2	1	2	0	0	3
10013602	100003251	AUG A3 Sakura	0	1000	86400	2	1	2	0	0	3
10013701	100003252	AK SOPMOD Sakura	0	1000	2592000	2	1	2	0	0	3
10013703	100003252	AK SOPMOD Sakura	0	1000	604800	2	1	2	0	0	3
10013702	100003252	AK SOPMOD Sakura	0	1000	86400	2	1	2	0	0	3
10013803	100003253	AUG A3 Serpent	0	1000	604800	2	1	2	0	0	0
10013801	100003253	AUG A3 Serpent	0	1000	2592000	2	1	2	0	0	3
10013802	100003253	AUG A3 Serpent	0	1000	86400	2	1	2	0	0	3
10013902	100003254	Pistola de Água 2016	0	1000	86400	2	1	2	0	0	0
10013903	100003254	Pistola de Água 2016	0	1000	604800	2	1	2	0	0	0
10013901	100003254	Pistola de Água 2016	0	1000	2592000	2	1	2	0	0	0
10014003	100003255	AUG A3 GRS3	0	1000	604800	2	1	2	0	0	0
10014001	100003255	AUG A3 GRS3	0	1000	2592000	2	1	2	0	0	0
10014002	100003255	AUG A3 GRS3	0	1000	86400	2	1	2	0	0	0
10014102	100003256	AUG A3 Beast	0	1000	86400	2	1	2	0	0	3
10014101	100003256	AUG A3 Beast	0	1000	2592000	2	1	2	0	0	3
10014103	100003256	AUG A3 Beast	0	1000	604800	2	1	2	0	0	3
10014202	100003257	AUG A3 PBGC	0	1000	86400	2	1	2	0	0	0
10014203	100003257	AUG A3 PBGC	0	1000	604800	2	1	2	0	0	0
10014201	100003257	AUG A3 PBGC	0	1000	2592000	2	1	2	0	0	0
10014303	100003258	AUG A3 GSL2016	0	1000	604800	2	1	2	0	0	0
10014301	100003258	AUG A3 GSL2016	0	1000	2592000	2	1	2	0	0	0
10014302	100003258	AUG A3 GSL2016	0	1000	86400	2	1	2	0	0	0
10014403	100003259	AUG A3 Tiger-Normal	0	1000	604800	2	1	2	0	0	0
10014401	100003259	AUG A3 Tiger-Normal	0	1000	2592000	2	1	2	0	0	0
10014402	100003259	AUG A3 Tiger-Normal	0	1000	86400	2	1	2	0	0	0
10014502	100003260	AUG A3 Tiger-Deluxe	0	1000	86400	2	1	2	0	0	0
10014503	100003260	AUG A3 Tiger-Deluxe	0	1000	604800	2	1	2	0	0	0
10014501	100003260	AUG A3 Tiger-Deluxe	0	1000	2592000	2	1	2	0	0	0
10014602	100003261	AUG A3 Midnight2	0	1000	86400	2	1	2	0	0	0
10014603	100003261	AUG A3 Midnight2	0	1000	604800	2	1	2	0	0	0
10014601	100003261	AUG A3 Midnight2	0	1000	2592000	2	1	2	0	0	0
10014701	100003262	AUG A3 Skeleton	0	1000	2592000	2	1	2	0	0	0
10014702	100003262	AUG A3 Skeleton	0	1000	86400	2	1	2	0	0	0
10014703	100003262	AUG A3 Skeleton	0	1000	604800	2	1	2	0	0	0
10014801	100003263	AUG A3 E-Sport2	0	1000	2592000	2	1	2	0	0	0
10014803	100003263	AUG A3 E-Sport2	0	1000	604800	2	1	2	0	0	0
10014802	100003263	AUG A3 E-Sport2	0	1000	86400	2	1	2	0	0	0
10014902	100003264	Famas G2 M203 E-Sport2	0	1000	86400	2	1	2	0	0	0
10014903	100003264	Famas G2 M203 E-Sport2	0	1000	604800	2	1	2	0	0	0
10014901	100003264	Famas G2 M203 E-Sport2	0	1000	2592000	2	1	2	0	0	0
10015001	100003265	AUG A3 Dragon	0	1000	2592000	2	1	2	0	0	0
10015002	100003265	AUG A3 Dragon	0	1000	86400	2	1	2	0	0	0
10015003	100003265	AUG A3 Dragon	0	1000	604800	2	1	2	0	0	0
10015103	100003266	AUG A3 PBWC2016	0	1000	604800	2	1	2	0	0	3
10015102	100003266	AUG A3 PBWC2016	0	1000	86400	2	1	2	0	0	0
10015101	100003266	AUG A3 PBWC2016	0	1000	2592000	2	1	2	0	0	3
10015202	100003267	AUG A3 Mummy	0	1000	86400	2	1	2	0	0	0
10015203	100003267	AUG A3 Mummy	0	1000	604800	2	1	2	0	0	0
10015201	100003267	AUG A3 Mummy	0	1000	2592000	2	1	2	0	0	0
10003401	100003268	Pindad SS2 V5	0	1000	100	2	1	2	0	0	0
10003402	100003268	Pindad SS2 V5	0	1000	500	2	1	2	0	0	0
10015301	100003269	Pindad SS2 V5 Gold	0	1000	2592000	2	1	2	0	0	0
10015303	100003269	Pindad SS2 V5 Gold	0	1000	604800	2	1	2	0	0	0
10015302	100003269	Pindad SS2 V5 Gold	0	1000	86400	2	1	2	0	0	0
10015401	100003270	Pindad SS2 V5 Silver	0	1000	2592000	2	1	2	0	0	0
10015402	100003270	Pindad SS2 V5 Silver	0	1000	86400	2	1	2	0	0	0
10015403	100003270	Pindad SS2 V5 Silver	0	1000	604800	2	1	2	0	0	0
10015501	100003271	AUG A3 ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
10015503	100003271	AUG A3 ID 1stAnni	0	1000	604800	2	1	2	0	0	0
10015502	100003271	AUG A3 ID 1stAnni	0	1000	86400	2	1	2	0	0	0
10015602	100003272	AUG A3 Strike	0	1000	86400	2	1	2	0	0	0
10015603	100003272	AUG A3 Strike	0	1000	604800	2	1	2	0	0	0
10015601	100003272	AUG A3 Strike	0	1000	2592000	2	1	2	0	0	0
10015701	100003273	SC-2010 Strike	0	1000	2592000	2	1	2	0	0	0
10015703	100003273	SC-2010 Strike	0	1000	604800	2	1	2	0	0	0
10015702	100003273	SC-2010 Strike	0	1000	2592000	2	1	2	0	0	0
10015801	100003274	AUG A3 Demonic	0	1000	2592000	2	1	2	0	0	0
10015803	100003274	AUG A3 Demonic	0	1000	604800	2	1	2	0	0	0
10015802	100003274	AUG A3 Demonic	0	1000	86400	2	1	2	0	0	0
10015902	100003275	AUG A3 Dolphin	0	1000	86400	2	1	2	0	0	3
10015903	100003275	AUG A3 Dolphin	0	1000	604800	2	1	2	0	0	3
10015901	100003275	AUG A3 Dolphin	0	1000	2592000	2	1	2	0	0	3
10016003	100003276	SC-2010 Dolphin	0	1000	604800	2	1	2	0	0	3
10016002	100003276	SC-2010 Dolphin	0	1000	86400	2	1	2	0	0	3
10016001	100003276	SC-2010 Dolphin	0	1000	2592000	2	1	2	0	0	3
10016201	100003278	AUG A3 Lebaran2016	0	1000	2592000	2	1	2	0	0	0
10016203	100003278	AUG A3 Lebaran2016	0	1000	604800	2	1	2	0	0	0
10016202	100003278	AUG A3 Lebaran2016	0	1000	2592000	2	1	2	0	0	0
10016303	100003279	AUG A3 Alien	0	1000	604800	2	1	2	0	0	0
10016301	100003279	AUG A3 Alien	0	1000	2592000	2	1	2	0	0	0
10016302	100003279	AUG A3 Alien	0	1000	86400	2	1	2	0	0	0
10016401	100003280	AUG A3 Woody	0	1000	2592000	2	1	2	0	0	0
10016403	100003280	AUG A3 Woody	0	1000	2592000	2	1	2	0	0	0
10016402	100003280	AUG A3 Woody	0	1000	86400	2	1	2	0	0	0
10016501	100003281	XM8 Woody	0	1000	2592000	2	1	2	0	0	0
10016503	100003281	XM8 Woody	0	1000	604800	2	1	2	0	0	0
10016502	100003281	XM8 Woody	0	1000	86400	2	1	2	0	0	0
10016602	100003282	Famas G2 Newborn2016	0	1000	86400	2	1	2	0	0	0
10016603	100003282	Famas G2 Newborn2016	0	1000	604800	2	1	2	0	0	0
10016601	100003282	Famas G2 Newborn2016	0	1000	2592000	2	1	2	0	0	0
10016701	100003283	AUG A3 Puzzle	0	1000	2592000	2	1	2	0	0	0
10016703	100003283	AUG A3 Puzzle	0	1000	604800	2	1	2	0	0	0
10016702	100003283	AUG A3 Puzzle	0	1000	86400	2	1	2	0	0	0
10001601	100003284	Groza	0	1000	100	1	1	2	0	0	0
10001602	100003284	Groza	0	1000	500	2	1	2	0	0	0
10016801	100003285	Groza Gold	0	1000	2592000	2	1	2	0	0	0
10016803	100003285	Groza Gold	0	1000	604800	2	1	2	0	0	0
10016802	100003285	Groza Gold	0	1000	86400	2	1	2	0	0	0
10016901	100003286	Groza Silver	0	1000	2592000	2	1	2	0	0	0
10016903	100003286	Groza Silver	0	1000	604800	2	1	2	0	0	0
10016902	100003286	Groza Silver	0	1000	86400	2	1	2	0	0	0
10017001	100003287	SC-2010 Dracula	0	1000	2592000	2	1	2	0	0	0
10017003	100003287	SC-2010 Dracula	0	1000	2592000	2	1	2	0	0	0
10017002	100003287	SC-2010 Dracula	0	1000	2592000	2	1	2	0	0	0
10017103	100003288	Groza Russian Normal	0	1000	604800	2	1	2	4	0	0
10017102	100003288	Groza Russian Normal	0	1000	86400	2	1	2	4	0	0
10017101	100003288	Groza Russian Normal	0	1000	2592000	2	1	2	4	0	0
10017202	100003289	Groza Russian Deluxe	0	1000	86400	2	1	2	4	0	0
10017201	100003289	Groza Russian Deluxe	0	1000	2592000	2	1	2	4	0	0
10017203	100003289	Groza Russian Deluxe	0	1000	604800	2	1	2	4	0	0
10017303	100003290	AUG A3 Liberty	0	1000	604800	2	1	2	0	0	0
10017301	100003290	AUG A3 Liberty	0	1000	2592000	2	1	2	0	0	0
10017302	100003290	AUG A3 Liberty	0	1000	86400	2	1	2	0	0	0
10017403	100003291	AUG A3 PBIC2016	0	1000	604800	2	1	2	0	0	0
10017401	100003291	AUG A3 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10017402	100003291	AUG A3 PBIC2016	0	1000	86400	2	1	2	0	0	0
10017501	100003292	SC-2010 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10017502	100003292	SC-2010 PBIC2016	0	1000	86400	2	1	2	0	0	0
10017503	100003292	SC-2010 PBIC2016	0	1000	604800	2	1	2	0	0	0
10017601	100003293	K2C PBIC2016	0	1000	2592000	2	1	2	0	0	0
10017602	100003293	K2C PBIC2016	0	1000	86400	2	1	2	0	0	0
10017603	100003293	K2C PBIC2016	0	1000	604800	2	1	2	0	0	0
10017702	100003294	AUG A3 PBTC2016	0	1000	86400	2	1	2	0	0	0
10017703	100003294	AUG A3 PBTC2016	0	1000	604800	2	1	2	0	0	0
10017701	100003294	AUG A3 PBTC2016	0	1000	2592000	2	1	2	0	0	0
10017901	100003296	AUG A3 PBNC2016	0	1000	2592000	2	1	2	0	0	0
10017903	100003296	AUG A3 PBNC2016	0	1000	604800	2	1	2	0	0	0
10017902	100003296	AUG A3 PBNC2016	0	1000	86400	2	1	2	0	0	0
10018003	100003297	Pindad SS2 V5 PBNC2016	0	1000	604800	2	1	2	0	0	0
10018002	100003297	Pindad SS2 V5 PBNC2016	0	1000	86400	2	1	2	0	0	0
10018001	100003297	Pindad SS2 V5 PBNC2016	0	1000	2592000	2	1	2	0	0	0
10018103	100003298	AUG A3 PBST2016	0	1000	604800	2	1	2	0	0	0
10018102	100003298	AUG A3 PBST2016	0	1000	86400	2	1	2	0	0	0
10018101	100003298	AUG A3 PBST2016	0	1000	2592000	2	1	2	0	0	0
10018201	100003299	AUG A3 SUPREME	0	1000	2592000	2	1	2	0	0	0
10018203	100003299	AUG A3 SUPREME	0	1000	604800	2	1	2	0	0	0
10018202	100003299	AUG A3 SUPREME	0	1000	86400	2	1	2	0	0	0
10018302	100003300	AUG A3 Halloween 2016	0	1000	86400	2	1	2	0	0	0
10018301	100003300	AUG A3 Halloween 2016	0	1000	2592000	2	1	2	0	0	0
10018303	100003300	AUG A3 Halloween 2016	0	1000	604800	2	1	2	0	0	0
10018401	100003301	AK-12 Gorgeous	0	1000	2592000	2	1	2	0	0	0
10018403	100003301	AK-12 Gorgeous	0	1000	604800	2	1	2	0	0	0
10018402	100003301	AK-12 Gorgeous	0	1000	86400	2	1	2	0	0	0
10018502	100003302	AUG A3 Gorgeous	0	1000	86400	2	1	2	0	0	0
10018501	100003302	AUG A3 Gorgeous	0	1000	2592000	2	1	2	0	0	0
10018503	100003302	AUG A3 Gorgeous	0	1000	604800	2	1	2	0	0	0
140076105	100003335	AUG A3 GSL 2017	0	1000	2592000	2	1	2	1	0	0
100003323	100003323	Aug A3 Pirate	0	1000	2592000	2	1	2	0	0	0
10016103	100003277	AUG A3 Blue Diamond	0	1000	604800	2	1	2	2	0	0
10016102	100003277	AUG A3 Blue Diamond	0	1000	86400	2	1	2	2	0	0
140076108	100003369	AUG A3 PBTC2017	0	1000	2592000	2	1	2	1	0	0
10065301	100003394	AUG A3 HALLOWEEN2017	0	1000	86400	2	1	1	1	0	0
10065303	100003394	AUG A3 HALLOWEEN2017	0	1000	2592000	2	1	1	1	0	0
10065302	100003394	AUG A3 HALLOWEEN2017	0	1000	604800	2	1	1	1	0	0
10065402	100003395	SC 2010 HALLOWEEN2017	0	1000	604800	2	1	1	1	0	0
10065403	100003395	SC 2010 HALLOWEEN2017	0	1000	2592000	2	1	1	1	0	0
10065401	100003395	SC 2010 HALLOWEEN2017	0	1000	86400	2	1	1	1	0	0
10065202	100003399	AUG A3 FIREDRAGON	0	1000	2592000	2	1	2	0	0	0
10065203	100003399	AUG A3 FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
10065201	100003399	AUG A3 FIREDRAGON	0	1000	86400	2	1	1	0	0	0
100003428	100003428	AUG A3 Nevasca	0	1000	2592000	2	1	2	5	0	0
100003429	100003429	SC-2010 Nevasca	0	1000	2592000	2	1	2	5	0	0
10065803	100003431	AUG HBAR PANDORA	0	1000	2592000	2	1	1	1	0	0
10065802	100003431	AUG HBAR PANDORA	0	1000	604800	2	1	1	1	0	0
10065801	100003431	AUG HBAR PANDORA	0	1000	86400	2	1	1	1	0	0
140076110	100003432	AUG A3 Blue	0	1000	2592000	2	1	2	1	0	0
100003433	100003433	AUG A3 Zepetto	0	1000	2592000	2	1	2	1	0	0
140076113	100003438	SC-2010 GRS V	0	1000	2592000	2	1	2	1	0	0
10064202	100003449	AUG A3 DIGITAL	0	1000	604800	2	1	1	1	0	0
10064203	100003449	AUG A3 DIGITAL	0	1000	2592000	2	1	1	1	0	0
10064201	100003449	AUG A3 DIGITAL	0	1000	86400	2	1	1	1	0	0
10064301	100003450	AK 47 DIGITAL	0	1000	86400	2	1	1	1	0	0
10064302	100003450	AK 47 DIGITAL	0	1000	604800	2	1	1	1	0	0
10064303	100003450	AK 47 DIGITAL	0	1000	2592000	2	1	1	1	0	0
10065903	100003451	AUG  A3 M1LGR4U	0	1000	2592000	2	1	1	1	0	0
10065902	100003451	AUG  A3 M1LGR4U	0	1000	604800	2	1	1	1	0	0
10065901	100003451	AUG  A3 M1LGR4U	0	1000	86400	2	1	1	1	0	0
10066002	100003452	SC 2010 M1LGR4U	0	1000	604800	2	1	1	1	0	0
10066003	100003452	SC 2010 M1LGR4U	0	1000	2592000	2	1	1	1	0	0
10066001	100003452	SC 2010 M1LGR4U	0	1000	2592000	2	1	2	1	0	0
10063501	100003454	ASSAULT_AUG_A3_PBWC2018	0	1000	86400	2	1	1	4	0	0
10063502	100003454	ASSAULT_AUG_A3_PBWC2018	0	1000	604800	2	1	1	4	0	0
10063503	100003454	ASSAULT_AUG_A3_PBWC2018	0	1000	2592000	2	1	1	4	0	0
10063602	100003455	ASSAULT_SC_2010_PBWC2018	0	1000	604800	2	1	1	4	0	0
10063601	100003455	ASSAULT_SC_2010_PBWC2018	0	1000	86400	2	1	1	4	0	0
10063603	100003455	ASSAULT_SC_2010_PBWC2018	0	1000	2592000	2	1	1	4	0	0
140076101	100003458	AUG A3 Silence MNB4	0	1000	2592000	2	1	2	1	0	0
100003471	100003471	AUG Surfing	0	1000	2592000	2	1	2	1	0	0
100003472	100003472	SC-2010 Milkyway	0	1000	2592000	2	1	2	5	0	0
100003473	100003473	MSBS Milkyway	0	1000	2592000	2	1	2	5	0	0
10023702	200004001	MP5K Ext.	0	1000	500	1	1	2	0	0	0
10023701	200004001	MP5K Ext.	0	1000	100	1	1	2	0	0	0
10022102	200004002	Spectre Ext.	0	1000	500	1	1	2	0	0	0
10022101	200004002	Spectre Ext.	0	1000	100	1	1	2	0	0	0
10022202	200004004	MP7 Ext.	0	1000	500	1	1	2	0	0	0
10022201	200004004	MP7 Ext.	0	1000	100	1	1	2	0	0	0
10038901	200004005	Kriss S.V Cupido	0	1000	86400	2	1	2	0	0	3
10038902	200004005	Kriss S.V Cupido	0	1000	604800	2	1	2	0	0	3
10038903	200004005	Kriss S.V Cupido	0	1000	2592000	2	1	2	0	0	3
10022402	200004007	MP5K G.	0	1000	500	1	1	2	0	20	0
10022401	200004007	MP5K G.	0	1000	100	1	1	2	0	20	0
10022601	200004008	UMP45 Ext.	0	1000	100	1	1	2	0	0	0
10022602	200004008	UMP45 Ext.	0	1000	500	1	1	2	0	0	0
10022701	200004010	P90 MC	0	1000	100	1	1	2	0	0	0
10022702	200004010	P90 MC	0	1000	500	1	1	2	0	0	0
10023301	200004011	P90 Ext.	0	1000	100	1	1	2	6	0	0
10023302	200004011	P90 Ext.	0	1000	500	1	1	2	6	0	0
10023602	200004013	Kriss S.V	0	1000	500	1	1	2	0	24	0
10023601	200004013	Kriss S.V	0	1000	100	1	1	2	0	24	0
10039001	200004014	MP5K Silver	0	1000	86400	2	1	2	0	0	0
10039002	200004014	MP5K Silver	0	1000	604800	2	1	2	0	0	0
10039003	200004014	MP5K Silver	0	1000	2592000	2	1	2	0	0	0
10039101	200004017	P90 Cupido	0	1000	86400	2	1	2	0	0	3
10039103	200004017	P90 Cupido	0	1000	2592000	2	1	2	0	0	3
10039102	200004017	P90 Cupido	0	1000	604800	2	1	2	0	0	3
10039202	200004020	Spectre Silver	0	1000	604800	2	1	2	0	0	0
10039201	200004020	Spectre Silver	0	1000	2592000	2	1	2	0	0	0
10039203	200004020	Spectre Silver	0	1000	2592000	2	1	2	0	0	0
10039302	200004021	K-1 Silver	0	1000	604800	2	1	2	0	0	0
10039301	200004021	K-1 Silver	0	1000	86400	2	1	2	0	0	0
10039303	200004021	K-1 Silver	0	1000	2592000	2	1	2	0	0	0
10039402	200004023	UMP45 Sl.	0	1000	604800	2	1	2	0	0	0
10039401	200004023	UMP45 Sl.	0	1000	86400	2	1	2	0	0	0
10039403	200004023	UMP45 Sl.	0	1000	2592000	2	1	2	0	0	0
10039502	200004026	Kriss S.V Gold	0	1000	604800	2	1	2	0	0	0
10039503	200004026	Kriss S.V Gold	0	1000	2592000	2	1	2	0	0	0
10039501	200004026	Kriss S.V Gold	0	1000	86400	2	1	2	0	0	0
10039603	200004027	P90 MC Camoflage	0	1000	2592000	2	1	2	0	0	0
10039601	200004027	P90 MC Camoflage	0	1000	86400	2	1	2	0	0	0
10039602	200004027	P90 MC Camoflage	0	1000	604800	2	1	2	0	0	0
10039702	200004029	P90 Ext D	0	1000	604800	2	1	2	0	0	0
10039703	200004029	P90 Ext D	0	1000	2592000	2	1	2	0	0	0
10039701	200004029	P90 Ext D	0	1000	86400	2	1	2	0	0	0
10039803	200004030	Kriss S.V D	0	1000	2592000	2	1	2	0	0	0
10039801	200004030	Kriss S.V D	0	1000	86400	2	1	2	0	0	0
10039802	200004030	Kriss S.V D	0	1000	604800	2	1	2	0	0	0
10039903	200004032	P90 M.C D	0	1000	2592000	2	1	2	0	0	0
10039902	200004032	P90 M.C D	0	1000	604800	2	1	2	0	0	0
10039901	200004032	P90 M.C D	0	1000	86400	2	1	2	0	0	0
10022002	200004033	AKS74U Ext.	0	1000	500	1	1	2	0	0	0
10022001	200004033	AKS74U Ext.	0	1000	100	1	1	2	0	0	0
10040003	200004037	MP7 Silver	0	1000	2592000	2	1	2	0	0	0
10040002	200004037	MP7 Silver	0	1000	604800	2	1	2	0	0	0
10040001	200004037	MP7 Silver	0	1000	86400	2	1	2	0	0	0
10040103	200004038	MP7 Camoflage	0	1000	2592000	2	1	2	0	0	0
10040101	200004038	MP7 Camoflage	0	1000	86400	2	1	2	0	0	0
10040102	200004038	MP7 Camoflage	0	1000	604800	2	1	2	0	0	0
10040201	200004039	Kriss S.V Black	0	1000	86400	2	1	2	0	0	0
10040203	200004039	Kriss S.V Black	0	1000	2592000	2	1	2	0	0	0
10040202	200004039	Kriss S.V Black	0	1000	604800	2	1	2	0	0	0
10040302	200004041	MP5K Silver D 	0	1000	2592000	2	1	2	0	0	0
10040301	200004041	MP5K Silver D 	0	1000	86400	2	1	2	0	0	0
10040303	200004041	MP5K Silver D 	0	1000	2592000	2	1	2	0	0	0
10022502	200004043	SS1-R5 Carbine 	0	1000	500	1	1	2	0	0	0
10022501	200004043	SS1-R5 Carbine 	0	1000	100	1	1	2	0	0	0
10024602	200004045	MP7 Ext. D 	0	1000	604800	2	1	2	0	0	0
10024603	200004045	MP7 Ext. D 	0	1000	2592000	2	1	2	0	0	0
10024601	200004045	MP7 Ext. D 	0	1000	86400	2	1	2	0	0	0
10024702	200004046	UMP45 Ext. D 	0	1000	604800	2	1	2	0	0	0
10024703	200004046	UMP45 Ext. D 	0	1000	2592000	2	1	2	0	0	0
10024701	200004046	UMP45 Ext. D 	0	1000	86400	2	1	2	0	0	0
10024801	200004049	SS1-R5 Carbine Gold	0	1000	86400	2	1	2	0	0	0
10024803	200004049	SS1-R5 Carbine Gold	0	1000	2592000	2	1	2	0	0	0
10024802	200004049	SS1-R5 Carbine Gold	0	1000	2592000	2	1	2	0	0	0
10024901	200004050	Kriss S.V E-Sport	0	1000	86400	2	1	2	0	0	0
10024902	200004050	Kriss S.V E-Sport	0	1000	604800	2	1	2	0	0	0
10024903	200004050	Kriss S.V E-Sport	0	1000	2592000	2	1	2	0	0	0
10025002	200004054	Kriss S.V Vector 	0	1000	604800	2	1	2	0	0	0
10025003	200004054	Kriss S.V Vector 	0	1000	2592000	2	1	2	0	0	0
10025001	200004054	Kriss S.V Vector 	0	1000	86400	2	1	2	0	0	0
10025101	200004060	Kriss S.V IC	0	1000	86400	2	1	2	0	0	0
10025103	200004060	Kriss S.V IC	0	1000	2592000	2	1	2	0	0	0
10025102	200004060	Kriss S.V IC	0	1000	604800	2	1	2	0	0	0
10025203	200004075	P90 Gold 	0	1000	2592000	2	1	2	0	0	0
10025201	200004075	P90 Gold 	0	1000	86400	2	1	2	0	0	0
10025202	200004075	P90 Gold 	0	1000	604800	2	1	2	0	0	0
10025301	200004078	P90 PBTN 	0	1000	86400	2	1	2	0	0	0
10025302	200004078	P90 PBTN 	0	1000	604800	2	1	2	0	0	0
10025303	200004078	P90 PBTN 	0	1000	2592000	2	1	2	0	0	0
10025402	200004079	Kriss S.V PBTN 	0	1000	2592000	2	1	2	0	0	0
10025401	200004079	Kriss S.V PBTN 	0	1000	86400	2	1	2	0	0	0
10025403	200004079	Kriss S.V PBTN 	0	1000	2592000	2	1	2	0	0	0
10025602	200004082	P90 MC GRS	0	1000	604800	2	1	2	0	0	0
10025603	200004082	P90 MC GRS	0	1000	2592000	2	1	2	0	0	0
10025601	200004082	P90 MC GRS	0	1000	86400	2	1	2	0	0	0
10025701	200004083	Kriss S.V GRS	0	1000	86400	2	1	2	0	0	0
10025702	200004083	Kriss S.V GRS	0	1000	604800	2	1	2	0	0	0
10025703	200004083	Kriss S.V GRS	0	1000	2592000	2	1	2	0	0	0
10025802	200004085	P90 Newborn	0	1000	604800	2	1	2	0	0	0
10025801	200004085	P90 Newborn	0	1000	86400	2	1	2	0	0	0
10025803	200004085	P90 Newborn	0	1000	2592000	2	1	2	0	0	0
10025902	200004087	Kriss S.V GSL	0	1000	604800	2	1	2	0	0	0
10025903	200004087	Kriss S.V GSL	0	1000	2592000	2	1	2	0	0	0
10025901	200004087	Kriss S.V GSL	0	1000	86400	2	1	2	0	0	0
10026003	200004089	P90 GSL	0	1000	2592000	2	1	2	0	0	0
10026001	200004089	P90 GSL	0	1000	86400	2	1	2	0	0	0
10026002	200004089	P90 GSL	0	1000	604800	2	1	2	0	0	0
10022802	200004096	AKS74U Reload	0	1000	500	1	1	2	0	0	0
10022801	200004096	AKS74U Reload	0	1000	100	1	1	2	0	0	0
10022901	200004097	UMP45 Reload	0	1000	100	1	1	2	0	0	0
10022902	200004097	UMP45 Reload	0	1000	500	1	1	2	0	0	0
10023002	200004098	Spectre Reload	0	1000	500	1	1	2	0	0	0
10023001	200004098	Spectre Reload	0	1000	100	1	1	2	0	0	0
10023102	200004099	SS1-R5 Carbine Reload	0	1000	500	1	1	2	0	0	0
10023101	200004099	SS1-R5 Carbine Reload	0	1000	100	1	1	2	0	0	0
10023202	200004100	MP5K Reload	0	1000	500	1	1	2	0	0	0
10023201	200004100	MP5K Reload	0	1000	100	1	1	2	0	0	0
10026102	200004103	Kriss S.V PBIC2013	0	1000	604800	2	1	2	0	0	0
10026101	200004103	Kriss S.V PBIC2013	0	1000	86400	2	1	2	0	0	0
10026103	200004103	Kriss S.V PBIC2013	0	1000	2592000	2	1	2	0	0	0
10023402	200004106	PP-19 Bizon	0	1000	500	1	1	2	0	0	0
10023401	200004106	PP-19 Bizon	0	1000	100	1	1	2	0	0	0
10023501	200004107	MP9 Ext	0	1000	2592000	2	1	2	0	0	0
10023502	200004107	MP9 Ext	0	1000	500	1	1	2	0	0	0
10026203	200004108	Kriss S.V Silence	0	1000	2592000	2	1	2	0	0	0
10026201	200004108	Kriss S.V Silence	0	1000	86400	2	1	2	0	0	3
10026202	200004108	Kriss S.V Silence	0	1000	604800	2	1	2	0	0	3
10026303	200004110	Kriss S.V Turkey	0	1000	2592000	2	1	2	0	0	0
10026301	200004110	Kriss S.V Turkey	0	1000	86400	2	1	2	0	0	0
10026302	200004110	Kriss S.V Turkey	0	1000	604800	2	1	2	0	0	0
10026401	200004112	P90 M.C Bloody	0	1000	86400	2	1	2	0	0	0
10026403	200004112	P90 M.C Bloody	0	1000	2592000	2	1	2	0	0	0
10026402	200004112	P90 M.C Bloody	0	1000	604800	2	1	2	0	0	0
10026501	200004113	P90 M.C. LATIN3	0	1000	86400	2	1	2	0	0	0
10026503	200004113	P90 M.C. LATIN3	0	1000	2592000	2	1	2	0	0	0
10026502	200004113	P90 M.C. LATIN3	0	1000	604800	2	1	2	0	0	0
10026602	200004114	P90 Ext BR Camo	0	1000	604800	2	1	2	0	0	0
10026601	200004114	P90 Ext BR Camo	0	1000	86400	2	1	2	0	0	0
10026603	200004114	P90 Ext BR Camo	0	1000	2592000	2	1	2	0	0	0
10026702	200004115	Kriss S.V Sakura	0	1000	604800	2	1	2	0	0	3
10026703	200004115	Kriss S.V Sakura	0	1000	2592000	2	1	2	0	0	3
10026701	200004115	Kriss S.V Sakura	0	1000	86400	2	1	2	0	0	3
10026803	200004116	Kriss S.V Serpent	0	1000	2592000	2	1	2	0	0	3
10026801	200004116	Kriss S.V Serpent	0	1000	86400	2	1	2	0	0	3
10026802	200004116	Kriss S.V Serpent	0	1000	604800	2	1	2	0	0	3
10026902	200004118	P90 Serpent	0	1000	604800	2	1	2	0	0	3
10026901	200004118	P90 Serpent	0	1000	86400	2	1	2	0	0	3
10026903	200004118	P90 Serpent	0	1000	2592000	2	1	2	0	0	3
10036203	200004121	Kriss S.V TH 1st Anniversary	0	1000	2592000	2	1	2	0	0	0
10036202	200004121	Kriss S.V TH 1st Anniversary	0	1000	604800	2	1	2	0	0	0
10036201	200004121	Kriss S.V TH 1st Anniversary	0	1000	2592000	2	1	2	0	0	0
10037902	200004123	Kriss S.V R	0	1000	604800	2	1	2	0	0	0
10037903	200004123	Kriss S.V R	0	1000	2592000	2	1	2	0	0	0
10037901	200004123	Kriss S.V R	0	1000	86400	2	1	2	0	0	0
10038001	200004126	Kriss S.V Inferno	0	1000	86400	2	1	2	0	0	0
10038002	200004126	Kriss S.V Inferno	0	1000	604800	2	1	2	0	0	0
10038003	200004126	Kriss S.V Inferno	0	1000	2592000	2	1	2	0	0	0
10038103	200004128	P90 Inferno	0	1000	2592000	2	1	2	0	0	0
10038102	200004128	P90 Inferno	0	1000	604800	2	1	2	0	0	0
10038101	200004128	P90 Inferno	0	1000	86400	2	1	2	0	0	0
10038203	200004129	P90 Ext PBNC5	0	1000	2592000	2	1	2	0	0	0
10038201	200004129	P90 Ext PBNC5	0	1000	86400	2	1	2	0	0	0
10038202	200004129	P90 Ext PBNC5	0	1000	604800	2	1	2	0	0	0
10038303	200004130	Kriss S.V GSL2014	0	1000	2592000	2	1	2	0	0	0
10038302	200004130	Kriss S.V GSL2014	0	1000	604800	2	1	2	0	0	0
10038301	200004130	Kriss S.V GSL2014	0	1000	86400	2	1	2	0	0	0
10038403	200004132	Kriss S.V Midnight	0	1000	2592000	2	1	2	0	0	0
10038402	200004132	Kriss S.V Midnight	0	1000	604800	2	1	2	0	0	0
10038401	200004132	Kriss S.V Midnight	0	1000	2592000	2	1	2	0	0	0
10022301	200004134	OA-93	0	1000	100	1	1	2	0	0	0
10022302	200004134	OA-93	0	1000	500	1	1	2	0	0	0
10038502	200004136	OA-93 Gold	0	1000	604800	2	1	2	0	0	0
10038501	200004136	OA-93 Gold	0	1000	86400	2	1	2	0	0	0
10038503	200004136	OA-93 Gold	0	1000	2592000	2	1	2	0	0	0
10038602	200004138	P90 Brazuca	0	1000	604800	2	1	2	0	0	0
10038603	200004138	P90 Brazuca	0	1000	2592000	2	1	2	0	0	0
10038601	200004138	P90 Brazuca	0	1000	86400	2	1	2	0	0	0
10038701	200004139	Kriss S.V Brazuca	0	1000	86400	2	1	2	0	0	0
10038702	200004139	Kriss S.V Brazuca	0	1000	604800	2	1	2	0	0	0
10038703	200004139	Kriss S.V Brazuca	0	1000	2592000	2	1	2	0	0	0
10038803	200004142	Kriss S.V Champion	0	1000	2592000	2	1	2	0	0	0
10038801	200004142	Kriss S.V Champion	0	1000	86400	2	1	2	0	0	0
10038802	200004142	Kriss S.V Champion	0	1000	604800	2	1	2	0	0	0
10027002	200004144	Kriss S.V W.O.E	0	1000	604800	2	1	2	0	0	0
10027001	200004144	Kriss S.V W.O.E	0	1000	86400	2	1	2	0	0	0
10027003	200004144	Kriss S.V W.O.E	0	1000	2592000	2	1	2	0	0	0
10027103	200004146	P90 Ext PBIC2014	0	1000	2592000	2	1	2	0	0	0
10027102	200004146	P90 Ext PBIC2014	0	1000	2592000	2	1	2	0	0	0
10027101	200004146	P90 Ext PBIC2014	0	1000	86400	2	1	2	0	0	0
10027201	200004151	Kriss S.V PC Cafe	0	1000	86400	2	1	2	0	4	0
10027202	200004151	Kriss S.V PC Cafe	0	1000	604800	2	1	2	0	4	0
10027301	200004155	Kriss S.V G E-Sport	0	1000	86400	2	1	2	0	0	0
10027302	200004155	Kriss S.V G E-Sport	0	1000	604800	2	1	2	0	0	0
10027303	200004155	Kriss S.V G E-Sport	0	1000	2592000	2	1	2	0	0	0
10027401	200004157	Kriss S.V Toy	0	1000	86400	2	1	2	0	0	0
10027402	200004157	Kriss S.V Toy	0	1000	604800	2	1	2	0	0	0
10027403	200004157	Kriss S.V Toy	0	1000	2592000	2	1	2	0	0	0
10027501	200004159	OA-93 D.	0	1000	86400	2	1	2	0	0	0
10027502	200004159	OA-93 D.	0	1000	604800	2	1	2	0	0	0
10027503	200004159	OA-93 D.	0	1000	2592000	2	1	2	0	0	0
10027601	200004161	MP9 Ext Gold	0	1000	86400	2	1	2	0	0	0
10027603	200004161	MP9 Ext Gold	0	1000	2592000	2	1	2	0	0	0
10027602	200004161	MP9 Ext Gold	0	1000	604800	2	1	2	0	0	0
10027702	200004162	PP-19 Bizon Gold	0	1000	2592000	2	1	2	0	0	0
10027703	200004162	PP-19 Bizon Gold	0	1000	2592000	2	1	2	0	0	0
10027701	200004162	PP-19 Bizon Gold	0	1000	86400	2	1	2	0	0	0
10027803	200004163	P90 Ext. LATIN4	0	1000	2592000	2	1	2	0	0	0
10027801	200004163	P90 Ext. LATIN4	0	1000	86400	2	1	2	0	0	0
10027802	200004163	P90 Ext. LATIN4	0	1000	604800	2	1	2	0	0	0
10027901	200004164	MP9 Ext Especial de Natal	0	1000	86400	2	1	2	0	0	0
10027903	200004164	MP9 Ext Especial de Natal	0	1000	2592000	2	1	2	0	0	0
10027902	200004164	MP9 Ext Especial de Natal	0	1000	2592000	2	1	2	0	0	0
10028003	200004165	OA-93 Especial de Natal	0	1000	2592000	2	1	2	0	0	0
10028001	200004165	OA-93 Especial de Natal	0	1000	86400	2	1	2	0	0	0
10028002	200004165	OA-93 Especial de Natal	0	1000	604800	2	1	2	0	0	0
10028103	200004167	PP-19 Bizon Especial de Natal	0	1000	2592000	2	1	2	0	0	0
10028101	200004167	PP-19 Bizon Especial de Natal	0	1000	86400	2	1	2	0	0	0
10028102	200004167	PP-19 Bizon Especial de Natal	0	1000	604800	2	1	2	0	0	0
10028202	200004168	Kriss S.V Especial de Natal	0	1000	604800	2	1	2	0	0	0
10028201	200004168	Kriss S.V Especial de Natal	0	1000	86400	2	1	2	0	0	0
10028203	200004168	Kriss S.V Especial de Natal	0	1000	2592000	2	1	2	0	0	0
10028302	200004170	Kriss S.V Couple Breaker	0	1000	604800	2	1	2	0	0	0
10028301	200004170	Kriss S.V Couple Breaker	0	1000	86400	2	1	2	0	0	0
10028303	200004170	Kriss S.V Couple Breaker	0	1000	2592000	2	1	2	0	0	0
10028401	200004172	Kriss S.V ANC 2015	0	1000	86400	2	1	2	0	0	0
10028403	200004172	Kriss S.V ANC 2015	0	1000	2592000	2	1	2	0	0	0
10028402	200004172	Kriss S.V ANC 2015	0	1000	604800	2	1	2	0	0	0
10028502	200004174	P90 M.C Sheep	0	1000	604800	2	1	2	0	0	0
10028501	200004174	P90 M.C Sheep	0	1000	86400	2	1	2	0	0	0
10028503	200004174	P90 M.C Sheep	0	1000	2592000	2	1	2	0	0	0
10028603	200004175	Kriss S.V GRS2	0	1000	2592000	2	1	2	0	0	0
10028602	200004175	Kriss S.V GRS2	0	1000	604800	2	1	2	0	0	0
10028601	200004175	Kriss S.V GRS2	0	1000	86400	2	1	2	0	0	0
10028702	200004178	Kriss S.V Newborn 2015	0	1000	604800	2	1	2	0	0	0
10028703	200004178	Kriss S.V Newborn 2015	0	1000	2592000	2	1	2	0	0	0
10028701	200004178	Kriss S.V Newborn 2015	0	1000	86400	2	1	2	0	0	0
10028803	200004180	OA-93 GSL2015	0	1000	2592000	2	1	2	0	0	0
10028802	200004180	OA-93 GSL2015	0	1000	604800	2	1	2	0	0	0
10028801	200004180	OA-93 GSL2015	0	1000	86400	2	1	2	0	0	0
10028901	200004182	P90 Ext Silence GSL2015	0	1000	86400	2	1	2	0	0	0
10028902	200004182	P90 Ext Silence GSL2015	0	1000	604800	2	1	2	0	0	0
10028903	200004182	P90 Ext Silence GSL2015	0	1000	2592000	2	1	2	0	0	0
10030902	200004185	Kriss S.V Ongame	0	1000	604800	2	1	2	0	0	0
10030901	200004185	Kriss S.V Ongame	0	1000	86400	2	1	2	0	0	0
10030903	200004185	Kriss S.V Ongame	0	1000	2592000	2	1	2	0	0	0
10031003	200004187	P90 Ext Ongame	0	1000	2592000	2	1	2	0	0	0
10031002	200004187	P90 Ext Ongame	0	1000	604800	2	1	2	0	0	0
10031001	200004187	P90 Ext Ongame	0	1000	86400	2	1	2	0	0	0
10031101	200004188	Kriss S.V Redemption	0	1000	86400	2	1	2	0	0	0
10031102	200004188	Kriss S.V Redemption	0	1000	604800	2	1	2	0	0	0
10031103	200004188	Kriss S.V Redemption	0	1000	2592000	2	1	2	0	0	0
10031202	200004190	P90 Ext Redemption	0	1000	604800	2	1	2	0	0	0
10031201	200004190	P90 Ext Redemption	0	1000	86400	2	1	2	0	0	0
10031203	200004190	P90 Ext Redemption	0	1000	2592000	2	1	2	0	0	0
10031301	200004191	Kriss S.V Summer	0	1000	86400	2	1	2	1	0	0
10031302	200004191	Kriss S.V Summer	0	1000	604800	2	1	2	1	0	0
10031303	200004191	Kriss S.V Summer	0	1000	2592000	2	1	2	1	0	0
10031403	200004195	P90 M.C. Rose	0	1000	2592000	2	1	2	0	0	0
10031401	200004195	P90 M.C. Rose	0	1000	86400	2	1	2	0	0	0
10031402	200004195	P90 M.C. Rose	0	1000	604800	2	1	2	0	0	0
10031502	200004196	Kriss S.V Harimau	0	1000	604800	2	1	2	0	0	0
10031501	200004196	Kriss S.V Harimau	0	1000	86400	2	1	2	0	0	0
10031503	200004196	Kriss S.V Harimau	0	1000	2592000	2	1	2	0	0	0
10031602	200004198	OA-93 Independência	0	1000	604800	2	1	2	0	0	0
10031601	200004198	OA-93 Independência	0	1000	86400	2	1	2	0	0	0
10031603	200004198	OA-93 Independência	0	1000	2592000	2	1	2	0	0	0
10031702	200004200	P90 M.C Brasil	0	1000	604800	2	1	2	0	0	0
10031701	200004200	P90 M.C Brasil	0	1000	86400	2	1	2	0	0	0
10031703	200004200	P90 M.C Brasil	0	1000	2592000	2	1	2	0	0	0
10031802	200004201	Kriss S.V Red	0	1000	604800	2	1	2	0	0	0
10031803	200004201	Kriss S.V Red	0	1000	2592000	2	1	2	0	0	0
10031801	200004201	Kriss S.V Red	0	1000	86400	2	1	2	0	0	0
10031903	200004203	OA-93 PBST2015	0	1000	2592000	2	1	2	0	0	0
10031901	200004203	OA-93 PBST2015	0	1000	86400	2	1	2	0	0	0
10031902	200004203	OA-93 PBST2015	0	1000	604800	2	1	2	0	0	0
10032001	200004205	Kriss S.V PBNC2015	0	1000	86400	2	1	2	0	0	0
10032003	200004205	Kriss S.V PBNC2015	0	1000	2592000	2	1	2	0	0	0
10032002	200004205	Kriss S.V PBNC2015	0	1000	2592000	2	1	2	0	0	0
10032102	200004207	Kriss S.V PBTC2015	0	1000	604800	2	1	2	0	0	0
10032103	200004207	Kriss S.V PBTC2015	0	1000	2592000	2	1	2	0	0	0
10032101	200004207	Kriss S.V PBTC2015	0	1000	86400	2	1	2	0	0	0
10032202	200004209	Kriss S.V Mech	0	1000	604800	2	1	2	0	0	0
10032203	200004209	Kriss S.V Mech	0	1000	2592000	2	1	2	0	0	0
10032201	200004209	Kriss S.V Mech	0	1000	86400	2	1	2	0	0	0
10032302	200004210	P90 Mech	0	1000	604800	2	1	2	0	0	0
10032303	200004210	P90 Mech	0	1000	2592000	2	1	2	0	0	0
10032301	200004210	P90 Mech	0	1000	86400	2	1	2	0	0	0
10032401	200004212	Kriss S.V DarkDays	0	1000	86400	2	1	2	0	0	0
10032402	200004212	Kriss S.V DarkDays	0	1000	604800	2	1	2	0	0	0
10032403	200004212	Kriss S.V DarkDays	0	1000	2592000	2	1	2	0	0	0
10032503	200004214	OA-93 PBNC2015 U.S.	0	1000	2592000	2	1	2	0	0	0
10032501	200004214	OA-93 PBNC2015 U.S.	0	1000	86400	2	1	2	0	0	0
10032502	200004214	OA-93 PBNC2015 U.S.	0	1000	604800	2	1	2	0	0	0
10032603	200004216	Kriss S.V PBIC2015	0	1000	2592000	2	1	2	0	0	0
10032602	200004216	Kriss S.V PBIC2015	0	1000	604800	2	1	2	0	0	0
10032601	200004216	Kriss S.V PBIC2015	0	1000	86400	2	1	2	0	0	0
10032703	200004218	P90 Ext PBIC2015	0	1000	2592000	2	1	2	0	0	0
10032701	200004218	P90 Ext PBIC2015	0	1000	86400	2	1	2	0	0	0
10032702	200004218	P90 Ext PBIC2015	0	1000	604800	2	1	2	0	0	0
10032802	200004219	P90 M.C Gold	0	1000	2592000	2	1	2	0	0	0
10032801	200004219	P90 M.C Gold	0	1000	86400	2	1	2	0	0	0
10032803	200004219	P90 M.C Gold	0	1000	2592000	2	1	2	0	0	0
10032903	200004220	P90 M.C VeraCruz	0	1000	2592000	2	1	2	0	0	0
10032901	200004220	P90 M.C VeraCruz	0	1000	86400	2	1	2	0	0	0
10032902	200004220	P90 M.C VeraCruz	0	1000	604800	2	1	2	0	0	0
10033003	200004221	Kriss S.V Sheep	0	1000	2592000	2	1	2	0	0	0
10033001	200004221	Kriss S.V Sheep	0	1000	86400	2	1	2	0	0	0
10033002	200004221	Kriss S.V Sheep	0	1000	604800	2	1	2	0	0	0
10033101	200004223	Kriss S.V Basketball	0	1000	86400	2	1	2	0	0	0
10033102	200004223	Kriss S.V Basketball	0	1000	604800	2	1	2	0	0	0
10033103	200004223	Kriss S.V Basketball	0	1000	2592000	2	1	2	0	0	0
10033202	200004225	OA-93 Basketball	0	1000	604800	2	1	2	0	0	0
10033203	200004225	OA-93 Basketball	0	1000	2592000	2	1	2	0	0	0
10033201	200004225	OA-93 Basketball	0	1000	86400	2	1	2	0	0	0
10033302	200004227	P90 Basketball	0	1000	604800	2	1	2	0	0	0
10033303	200004227	P90 Basketball	0	1000	2592000	2	1	2	0	0	0
10033301	200004227	P90 Basketball	0	1000	86400	2	1	2	0	0	0
10033401	200004228	OA-93 Medical	0	1000	86400	2	1	2	0	0	0
10033402	200004228	OA-93 Medical	0	1000	604800	2	1	2	1	0	0
10033403	200004228	OA-93 Medical	0	1000	2592000	2	1	2	0	0	0
10033501	200004230	P90 Ext Medical	0	1000	86400	2	1	2	0	0	0
10033503	200004230	P90 Ext Medical	0	1000	2592000	2	1	2	0	0	0
10033502	200004230	P90 Ext Medical	0	1000	604800	2	1	2	0	0	0
10033601	200004231	MP9 Ext. D.	0	1000	86400	2	1	2	0	0	0
10033603	200004231	MP9 Ext. D.	0	1000	2592000	2	1	2	0	0	0
10033602	200004231	MP9 Ext. D.	0	1000	604800	2	1	2	0	0	0
10033703	200004232	OA-93 Cobra	0	1000	2592000	2	1	2	0	0	0
10033701	200004232	OA-93 Cobra	0	1000	86400	2	1	2	0	0	0
10033702	200004232	OA-93 Cobra	0	1000	604800	2	1	2	0	0	0
10033802	200004234	P90 M.C Camo Soldier	0	1000	604800	2	1	2	0	0	0
10033801	200004234	P90 M.C Camo Soldier	0	1000	2592000	2	1	2	0	0	0
10033803	200004234	P90 M.C Camo Soldier	0	1000	2592000	2	1	2	0	0	0
10033901	200004235	Kriss S.V Steam	0	1000	86400	2	1	2	0	0	0
10033903	200004235	Kriss S.V Steam	0	1000	2592000	2	1	2	0	0	0
10033902	200004235	Kriss S.V Steam	0	1000	604800	2	1	2	0	0	0
10029003	200004237	Kriss S.V Halloween	0	1000	2592000	2	1	2	0	0	0
10029001	200004237	Kriss S.V Halloween	0	1000	86400	2	1	2	0	0	0
10029002	200004237	Kriss S.V Halloween	0	1000	604800	2	1	2	0	0	0
10029103	200004240	P90 M.C SPY	0	1000	2592000	2	1	2	0	0	0
10029102	200004240	P90 M.C SPY	0	1000	604800	2	1	2	0	0	0
10029101	200004240	P90 M.C SPY	0	1000	86400	2	1	2	0	0	0
10029201	200004241	P90 M.C Latin5	0	1000	2592000	2	1	2	0	0	0
10029202	200004241	P90 M.C Latin5	0	1000	604800	2	1	2	0	0	0
10029203	200004241	P90 M.C Latin5	0	1000	2592000	2	1	2	0	0	0
10029303	200004242	Kriss S.V Obsidian	0	1000	2592000	2	1	2	0	0	0
10029302	200004242	Kriss S.V Obsidian	0	1000	604800	2	1	2	0	0	0
10029301	200004242	Kriss S.V Obsidian	0	1000	86400	2	1	2	0	0	0
10029403	200004244	P90 M.C Spy-Deluxe	0	1000	2592000	2	1	2	0	0	0
10029402	200004244	P90 M.C Spy-Deluxe	0	1000	604800	2	1	2	0	0	0
10029401	200004244	P90 M.C Spy-Deluxe	0	1000	86400	2	1	2	0	0	0
10029503	200004245	Kriss S.V DFN	0	1000	2592000	2	1	2	0	0	0
10029502	200004245	Kriss S.V DFN	0	1000	604800	2	1	2	0	0	0
10029501	200004245	Kriss S.V DFN	0	1000	86400	2	1	2	0	0	0
10029603	200004247	OA-93 DFN	0	1000	2592000	2	1	2	0	0	0
10029602	200004247	OA-93 DFN	0	1000	604800	2	1	2	0	0	0
10029601	200004247	OA-93 DFN	0	1000	86400	2	1	2	0	0	0
10029701	200004249	Kriss S.V XMAS2015	0	1000	86400	2	1	2	0	0	0
10029702	200004249	Kriss S.V XMAS2015	0	1000	604800	2	1	2	0	0	0
10029703	200004249	Kriss S.V XMAS2015	0	1000	2592000	2	1	2	0	0	0
10029802	200004251	OA-93 XMAS2015	0	1000	604800	2	1	2	0	0	0
10029801	200004251	OA-93 XMAS2015	0	1000	86400	2	1	2	0	0	0
10029803	200004251	OA-93 XMAS2015	0	1000	2592000	2	1	2	0	0	0
10029902	200004253	Kriss S.V Monkey	0	1000	604800	2	1	2	0	0	0
10029903	200004253	Kriss S.V Monkey	0	1000	2592000	2	1	2	0	0	0
10029901	200004253	Kriss S.V Monkey	0	1000	2592000	2	1	2	0	0	0
10030001	200004255	Kriss S.V GRS3	0	1000	86400	2	1	2	0	0	0
10030003	200004255	Kriss S.V GRS3	0	1000	2592000	2	1	2	0	0	0
10030002	200004255	Kriss S.V GRS3	0	1000	604800	2	1	2	0	0	0
10030103	200004258	Kriss S.V Beast	0	1000	2592000	2	1	2	0	0	3
10030102	200004258	Kriss S.V Beast	0	1000	604800	2	1	2	0	0	3
10030101	200004258	Kriss S.V Beast	0	1000	86400	2	1	2	0	0	3
10030203	200004260	Kriss S.V PBGC	0	1000	2592000	2	1	2	0	0	0
10030202	200004260	Kriss S.V PBGC	0	1000	604800	2	1	2	0	0	0
10030201	200004260	Kriss S.V PBGC	0	1000	86400	2	1	2	0	0	0
10030301	200004262	P90 PBGC	0	1000	86400	2	1	2	0	0	0
10030302	200004262	P90 PBGC	0	1000	604800	2	1	2	0	0	0
10030303	200004262	P90 PBGC	0	1000	2592000	2	1	2	0	0	0
10030401	200004263	Kriss S.V GSL2016	0	1000	86400	2	1	2	0	0	0
10030403	200004263	Kriss S.V GSL2016	0	1000	2592000	2	1	2	0	0	0
10030402	200004263	Kriss S.V GSL2016	0	1000	604800	2	1	2	0	0	0
10030503	200004265	Kriss S.V Midnigth2	0	1000	2592000	2	1	2	0	0	0
10030501	200004265	Kriss S.V Midnigth2	0	1000	86400	2	1	2	0	0	0
10030502	200004265	Kriss S.V Midnigth2	0	1000	604800	2	1	2	0	0	0
10030601	200004267	Kriss S.V Skeleton	0	1000	86400	2	1	2	0	0	0
10030603	200004267	Kriss S.V Skeleton	0	1000	2592000	2	1	2	0	0	0
10030602	200004267	Kriss S.V Skeleton	0	1000	604800	2	1	2	0	0	0
10030703	200004269	P90 Ext Skeleton	0	1000	2592000	2	1	2	0	0	0
10030702	200004269	P90 Ext Skeleton	0	1000	604800	2	1	2	0	0	0
10030701	200004269	P90 Ext Skeleton	0	1000	2592000	2	1	2	0	0	0
10030802	200004270	Kriss S.V E-Sport2	0	1000	604800	2	1	2	0	0	0
10030801	200004270	Kriss S.V E-Sport2	0	1000	86400	2	1	2	0	0	0
10030803	200004270	Kriss S.V E-Sport2	0	1000	2592000	2	1	2	0	0	0
10034001	200004272	P90 Ext. Dragon	0	1000	86400	2	1	2	0	0	0
10034002	200004272	P90 Ext. Dragon	0	1000	604800	2	1	2	0	0	0
10034003	200004272	P90 Ext. Dragon	0	1000	2592000	2	1	2	0	0	0
10034103	200004273	OA-93 PBWC2016	0	1000	2592000	2	1	2	0	0	3
10034101	200004273	OA-93 PBWC2016	0	1000	86400	2	1	2	0	0	3
10034102	200004273	OA-93 PBWC2016	0	1000	604800	2	1	2	0	0	3
10034201	200004275	Kriss S.V PBWC2016	0	1000	86400	2	1	2	0	0	3
10034203	200004275	Kriss S.V PBWC2016	0	1000	2592000	2	1	2	0	0	3
10034202	200004275	Kriss S.V PBWC2016	0	1000	604800	2	1	2	0	0	3
10034303	200004277	P90 Ext. PBWC2016	0	1000	2592000	2	1	2	0	0	3
10034302	200004277	P90 Ext. PBWC2016	0	1000	604800	2	1	2	0	0	3
10034301	200004277	P90 Ext. PBWC2016	0	1000	86400	2	1	2	0	0	3
10034402	200004278	Kriss S.V Mummy	0	1000	604800	2	1	2	0	0	0
10034401	200004278	Kriss S.V Mummy	0	1000	86400	2	1	2	0	0	0
10034403	200004278	Kriss S.V Mummy	0	1000	2592000	2	1	2	0	0	0
10034503	200004280	Kriss S.V ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
10034502	200004280	Kriss S.V ID 1stAnni	0	1000	604800	2	1	2	0	0	0
10034501	200004280	Kriss S.V ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
10034602	200004282	P90 Ext. 1stAnni	0	1000	604800	2	1	2	0	0	0
10034603	200004282	P90 Ext. 1stAnni	0	1000	2592000	2	1	2	0	0	0
10034601	200004282	P90 Ext. 1stAnni	0	1000	86400	2	1	2	0	0	0
10034701	200004283	Kriss S.V Strike	0	1000	86400	2	1	2	0	0	0
10034702	200004283	Kriss S.V Strike	0	1000	604800	2	1	2	0	0	0
10034703	200004283	Kriss S.V Strike	0	1000	2592000	2	1	2	0	0	0
10034802	200004285	P90 Ext. Silence Strike	0	1000	604800	2	1	2	0	0	0
10034803	200004285	P90 Ext. Silence Strike	0	1000	2592000	2	1	2	0	0	0
10034801	200004285	P90 Ext. Silence Strike	0	1000	86400	2	1	2	0	0	0
10034902	200004286	Kriss S.V Demonic	0	1000	604800	2	1	2	0	0	0
10034901	200004286	Kriss S.V Demonic	0	1000	86400	2	1	2	0	0	0
10034903	200004286	Kriss S.V Demonic	0	1000	2592000	2	1	2	0	0	0
10035001	200004288	P90 Ext. Silence Demonic	0	1000	86400	2	1	2	0	0	0
10035003	200004288	P90 Ext. Silence Demonic	0	1000	2592000	2	1	2	0	0	0
10035002	200004288	P90 Ext. Silence Demonic	0	1000	604800	2	1	2	0	0	0
10035102	200004289	Kriss S.V Dolphin	0	1000	604800	2	1	2	0	0	3
10035103	200004289	Kriss S.V Dolphin	0	1000	2592000	2	1	2	0	0	3
10035101	200004289	Kriss S.V Dolphin	0	1000	86400	2	1	2	0	0	3
10035201	200004291	P90 Ext Dolphin	0	1000	86400	2	1	2	0	0	3
10035202	200004291	P90 Ext Dolphin	0	1000	604800	2	1	2	0	0	3
10035203	200004291	P90 Ext Dolphin	0	1000	2592000	2	1	2	0	0	3
10035303	200004292	OA-93 Blue Diamond	0	1000	2592000	2	1	2	0	0	0
10035302	200004292	OA-93 Blue Diamond	0	1000	604800	2	1	2	0	0	3
10035301	200004292	OA-93 Blue Diamond	0	1000	86400	2	1	2	0	0	3
10035401	200004294	P90 Ext Lebaran2016	0	1000	86400	2	1	2	0	0	0
10035402	200004294	P90 Ext Lebaran2016	0	1000	604800	2	1	2	0	0	0
10035403	200004294	P90 Ext Lebaran2016	0	1000	2592000	2	1	2	0	0	0
10035501	200004295	Kriss S.V Lebaran2016	0	1000	86400	2	1	2	0	0	0
10035503	200004295	Kriss S.V Lebaran2016	0	1000	2592000	2	1	2	0	0	0
10035502	200004295	Kriss S.V Lebaran2016	0	1000	604800	2	1	2	0	0	0
10035602	200004297	P90 Ext. Alien	0	1000	604800	2	1	2	0	0	3
10035601	200004297	P90 Ext. Alien	0	1000	86400	2	1	2	0	0	3
10035603	200004297	P90 Ext. Alien	0	1000	2592000	2	1	2	0	0	3
10035701	200004298	Kriss S.V Alien	0	1000	86400	2	1	2	0	0	3
10035703	200004298	Kriss S.V Alien	0	1000	2592000	2	1	2	0	0	3
10035702	200004298	Kriss S.V Alien	0	1000	604800	2	1	2	0	0	3
10035802	200004300	OA-93 Woody	0	1000	604800	2	1	2	0	0	0
10035803	200004300	OA-93 Woody	0	1000	2592000	2	1	2	0	0	0
10035801	200004300	OA-93 Woody	0	1000	86400	2	1	2	0	0	0
10035902	200004302	OA-93 Newborn2016	0	1000	604800	2	1	2	0	0	3
10035901	200004302	OA-93 Newborn2016	0	1000	86400	2	1	2	0	0	3
10035903	200004302	OA-93 Newborn2016	0	1000	2592000	2	1	2	0	0	3
10036003	200004304	Kriss S.V Puzzle	0	1000	2592000	2	1	2	0	0	0
10036001	200004304	Kriss S.V Puzzle	0	1000	86400	2	1	2	0	0	0
10036002	200004304	Kriss S.V Puzzle	0	1000	604800	2	1	2	0	0	0
10036101	200004306	P90 Ext. Puzzle	0	1000	86400	2	1	2	0	0	0
10036102	200004306	P90 Ext. Puzzle	0	1000	604800	2	1	2	0	0	0
10036103	200004306	P90 Ext. Puzzle	0	1000	2592000	2	1	2	0	0	0
10037801	200004307	PP-19 Bizon Russian Normal	0	1000	86400	2	1	2	4	0	0
10037802	200004307	PP-19 Bizon Russian Normal	0	1000	604800	2	1	2	4	0	0
10037803	200004307	PP-19 Bizon Russian Normal	0	1000	2592000	2	1	2	4	0	0
10036303	200004308	PP-19 Bizon Russian Deluxe	0	1000	2592000	2	1	2	4	0	0
10036302	200004308	PP-19 Bizon Russian Deluxe	0	1000	604800	2	1	2	4	0	0
10036301	200004308	PP-19 Bizon Russian Deluxe	0	1000	86400	2	1	2	4	0	0
10036402	200004309	OA-93 Liberty	0	1000	604800	2	1	2	0	0	0
10036401	200004309	OA-93 Liberty	0	1000	86400	2	1	2	0	0	0
10036403	200004309	OA-93 Liberty	0	1000	2592000	2	1	2	0	0	0
10036501	200004311	P90 Ext. Liberty	0	1000	86400	2	1	2	0	0	0
10036502	200004311	P90 Ext. Liberty	0	1000	604800	2	1	2	0	0	0
10036503	200004311	P90 Ext. Liberty	0	1000	2592000	2	1	2	0	0	0
10036601	200004312	Kriss S.V PBIC2016	0	1000	86400	2	1	2	0	0	0
10036603	200004312	Kriss S.V PBIC2016	0	1000	2592000	2	1	2	0	0	0
10036602	200004312	Kriss S.V PBIC2016	0	1000	604800	2	1	2	0	0	0
10036703	200004314	OA-93 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10036701	200004314	OA-93 PBIC2016	0	1000	86400	2	1	2	0	0	0
10036702	200004314	OA-93 PBIC2016	0	1000	604800	2	1	2	0	0	0
10036801	200004316	Kriss S.V PBTC2016	0	1000	86400	2	1	2	0	0	0
10036802	200004316	Kriss S.V PBTC2016	0	1000	604800	2	1	2	0	0	0
10036803	200004316	Kriss S.V PBTC2016	0	1000	2592000	2	1	2	0	0	0
10037103	200004321	Kriss S.V PBNC2016	0	1000	2592000	2	1	2	0	0	0
10037102	200004321	Kriss S.V PBNC2016	0	1000	604800	2	1	2	0	0	0
10037101	200004321	Kriss S.V PBNC2016	0	1000	86400	2	1	2	0	0	0
10037203	200004323	Kriss S.V PBST2016	0	1000	2592000	2	1	2	0	0	0
10037202	200004323	Kriss S.V PBST2016	0	1000	604800	2	1	2	0	0	0
10037201	200004323	Kriss S.V PBST2016	0	1000	86400	2	1	2	0	0	0
10037302	200004325	Kriss S.V SUPREME	0	1000	604800	2	1	2	0	0	3
10037301	200004325	Kriss S.V SUPREME	0	1000	86400	2	1	2	0	0	3
10037303	200004325	Kriss S.V SUPREME	0	1000	2592000	2	1	2	0	0	3
10037403	200004327	P90 Ext. SUPREME	0	1000	2592000	2	1	2	0	0	3
10037401	200004327	P90 Ext. SUPREME	0	1000	86400	2	1	2	0	0	3
10037402	200004327	P90 Ext. SUPREME	0	1000	604800	2	1	2	0	0	3
10037502	200004328	OA-93 Halloween 2016	0	1000	604800	2	1	2	0	0	3
10037503	200004328	OA-93 Halloween 2016	0	1000	2592000	2	1	2	0	0	3
10037501	200004328	OA-93 Halloween 2016	0	1000	2592000	2	1	2	0	0	0
10037602	200004330	Kriss S.V Gorgeous	0	1000	604800	2	1	2	0	0	0
10037603	200004330	Kriss S.V Gorgeous	0	1000	2592000	2	1	2	0	0	0
10037601	200004330	Kriss S.V Gorgeous	0	1000	86400	2	1	2	0	0	0
10037703	200004332	OA-93 Gorgeous	0	1000	2592000	2	1	2	0	0	0
10037701	200004332	OA-93 Gorgeous	0	1000	86400	2	1	2	0	0	0
10037702	200004332	OA-93 Gorgeous	0	1000	604800	2	1	2	0	0	0
140076106	200004381	Kriss S.V GSL 2017	0	1000	2592000	2	1	2	1	0	0
140076107	200004383	OA-93 GSL 2017	0	1000	2592000	2	1	2	1	0	0
140076111	200004398	Dragoon	0	1000	2592000	2	1	2	1	0	0
140076109	200004450	Kriss S.V PBTC2017	0	1000	2592000	2	1	2	1	0	0
10065501	200004498	OA93 HALLOWEEN2017	0	1000	86400	2	1	1	1	0	0
10065502	200004498	OA93 HALLOWEEN2017	0	1000	604800	2	1	1	1	0	0
10065503	200004498	OA93 HALLOWEEN2017	0	1000	2592000	2	1	1	1	0	0
10065603	200004500	P90 EXT HALLOWEEN2017	0	1000	2592000	2	1	1	1	0	0
10065602	200004500	P90 EXT HALLOWEEN2017	0	1000	604800	2	1	1	1	0	0
10065601	200004500	P90 EXT HALLOWEEN2017	0	1000	86400	2	1	1	1	0	0
10064703	200004519	KRISSSUPERV FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
10064702	200004519	KRISSSUPERV FIREDRAGON	0	1000	604800	2	1	1	0	0	0
10064701	200004519	KRISSSUPERV FIREDRAGON	0	1000	86400	2	1	1	0	0	0
10064803	200004521	P90 EXT FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
10064802	200004521	P90 EXT FIREDRAGON	0	1000	604800	2	1	1	0	0	0
10064801	200004521	P90 EXT FIREDRAGON	0	1000	86400	2	1	1	0	0	0
10064902	200004522	OA93 FIREDRAGON	0	1000	604800	2	1	1	0	0	0
10064903	200004522	OA93 FIREDRAGON	0	1000	2592000	2	1	2	0	0	0
10064901	200004522	OA93 FIREDRAGON	0	1000	86400	2	1	1	0	0	0
200004558	200004558	P90 Ext. Nevasca	0	1000	2592000	2	1	2	5	0	0
200004564	200004564	Kriss S.V Zepetto	0	1000	2592000	2	1	2	1	0	0
200004566	200004566	OA-93 Zepetto	0	1000	2592000	2	1	2	1	0	0
10064402	200004598	KRISSSUPERV DIGITAL	0	1000	604800	2	1	1	1	0	0
10064401	200004598	KRISSSUPERV DIGITAL	0	1000	86400	2	1	1	1	0	0
10064403	200004598	KRISSSUPERV DIGITAL	0	1000	2592000	2	1	1	1	0	0
10066102	200004600	KRISSSUPERV M1LGR4U	0	1000	604800	2	1	1	1	0	0
10066101	200004600	KRISSSUPERV M1LGR4U	0	1000	86400	2	1	1	1	0	0
10066103	200004600	KRISSSUPERV M1LGR4U	0	1000	2592000	2	1	1	1	0	0
10066203	200004601	KRISSSUPERV M1LGR4U DUMMY	0	1000	2592000	2	1	1	1	0	0
10066202	200004601	KRISSSUPERV M1LGR4U DUMMY	0	1000	604800	2	1	1	1	0	0
10066201	200004601	KRISSSUPERV M1LGR4U DUMMY	0	1000	86400	2	1	1	1	0	0
10066303	200004602	P90 M1LGR4U	0	1000	2592000	2	1	1	1	0	0
10066302	200004602	P90 M1LGR4U	0	1000	604800	2	1	1	1	0	0
10066301	200004602	P90 M1LGR4U	0	1000	86400	2	1	1	1	0	0
10063703	200004607	SMG_OA_93_PBWC2018	0	1000	2592000	2	1	1	4	0	0
10063702	200004607	SMG_OA_93_PBWC2018	0	1000	604800	2	1	1	4	0	0
10063701	200004607	SMG_OA_93_PBWC2018	0	1000	86400	2	1	1	4	0	0
10063802	200004609	SMG_KRISSSUPERV_PBWC2018	0	1000	604800	2	1	1	4	0	0
10063801	200004609	SMG_KRISSSUPERV_PBWC2018	0	1000	86400	2	1	1	4	0	0
10063803	200004609	SMG_KRISSSUPERV_PBWC2018	0	1000	2592000	2	1	1	4	0	0
140076102	200004619	Kriss S.V Silence MNB4	0	1000	2592000	2	1	2	1	0	0
140076103	200004621	OA-93 Silence MNB4	0	1000	2592000	2	1	2	1	0	0
200004639	200004639	Kriss S.V Milkyway	0	1000	2592000	2	1	2	5	0	0
200004641	200004641	OA-93 Milkyway	0	1000	2592000	2	1	2	5	0	0
200004643	200004643	Kriss S.V Surfing	0	1000	2592000	2	1	2	1	0	0
200004645	200004645	OA 93 Surfing	0	1000	2592000	2	1	2	1	0	0
200004647	200004647	Kriss S.V Milkyway	0	1000	2592000	2	1	2	5	0	0
200004649	200004649	OA-93 Milkyway	0	1000	2592000	2	1	2	5	0	0
200004651	200004651	APC9 Milkyway	0	1000	2592000	2	1	2	5	0	0
10023802	200018004	Dual Uzi	0	1000	500	1	1	2	0	0	0
10023801	200018004	Dual Uzi	0	1000	100	1	1	2	0	0	0
10023902	200018005	Dual Mini Uzi	0	1000	500	1	1	2	0	0	0
10023901	200018005	Dual Mini Uzi	0	1000	100	1	1	2	0	0	0
10024002	200018006	Dual Micro Uzi	0	1000	500	1	1	2	0	0	0
10024001	200018006	Dual Micro Uzi	0	1000	100	1	1	2	0	0	0
10024101	200018007	Dual Uzi Silencer	0	1000	100	1	1	2	0	0	0
10024102	200018007	Dual Uzi Silencer	0	1000	500	1	1	2	0	0	0
10024202	200018008	Dual Mini Uzi Silencer	0	1000	500	1	1	2	0	0	0
10024201	200018008	Dual Mini Uzi Silencer	0	1000	100	1	1	2	0	0	0
10024301	200018009	Dual Micro Uzi Silencer	0	1000	100	1	1	2	0	0	0
10024302	200018009	Dual Micro Uzi Silencer	0	1000	2592000	2	1	2	0	0	0
10024402	200018011	Dual Micro Uzi Silencer Sl.	0	1000	500	1	1	2	0	0	0
10024401	200018011	Dual Micro Uzi Silencer Sl.	0	1000	100	1	1	2	0	0	0
10024501	200018013	Dual Mini Uzi G	0	1000	100	1	1	2	0	0	0
10024502	200018013	Dual Mini Uzi G	0	1000	500	1	1	2	0	0	0
140076112	200018139	Dual Dragoon	0	1000	2592000	2	1	2	1	0	0
10042401	300005001	Dragunov	0	1000	100	1	1	2	0	0	0
10042402	300005001	Dragunov	0	1000	500	1	1	2	0	0	0
10040901	300005002	PSG-1	0	1000	100	1	1	2	0	0	0
10040902	300005002	PSG-1	0	1000	500	1	1	2	0	0	0
10042201	300005005	L115A1	0	1000	100	1	1	2	0	0	0
10042202	300005005	L115A1	0	1000	500	1	1	2	0	0	0
10042301	300005006	Dragunov Gold	0	1000	100	1	1	2	0	14	0
10042302	300005006	Dragunov Gold	0	1000	500	1	1	2	0	14	0
10041702	300005007	PSG-1 S.	0	1000	500	1	1	2	0	0	0
10041701	300005007	PSG-1 S.	0	1000	100	1	1	2	0	0	0
10042603	300005008	SSG-69 Silver	0	1000	2592000	2	1	2	0	0	0
10042602	300005008	SSG-69 Silver	0	1000	604800	2	1	2	0	0	0
10042601	300005008	SSG-69 Silver	0	1000	86400	2	1	2	0	0	0
10042702	300005009	PSG-1 Silver	0	1000	604800	2	1	2	0	0	0
10042703	300005009	PSG-1 Silver	0	1000	2592000	2	1	2	0	0	0
10042701	300005009	PSG-1 Silver	0	1000	86400	2	1	2	0	0	0
10042803	300005010	Dragunov Silver	0	1000	2592000	2	1	2	0	0	0
10042802	300005010	Dragunov Silver	0	1000	604800	2	1	2	0	0	0
10042801	300005010	Dragunov Silver	0	1000	86400	2	1	2	0	0	0
10042902	300005011	Dragunov CS.	0	1000	604800	2	1	2	0	0	0
10042903	300005011	Dragunov CS.	0	1000	2592000	2	1	2	0	0	0
10042901	300005011	Dragunov CS.	0	1000	86400	2	1	2	0	0	0
10041502	300005012	Dragunov CG.	0	1000	500	1	1	2	0	0	0
10041501	300005012	Dragunov CG.	0	1000	100	1	1	2	0	0	0
10043002	300005014	Dragunov Gold D.	0	1000	604800	2	1	2	0	0	0
10043003	300005014	Dragunov Gold D.	0	1000	2592000	2	1	2	0	0	0
10043001	300005014	Dragunov Gold D.	0	1000	86400	2	1	2	0	0	0
10043101	300005015	L115A1 Gold	0	1000	86400	2	1	2	0	0	0
10043103	300005015	L115A1 Gold	0	1000	2592000	2	1	2	0	0	0
10043102	300005015	L115A1 Gold	0	1000	604800	2	1	2	0	0	0
10043202	300005017	L115A1 D	0	1000	604800	2	1	2	0	0	0
10043201	300005017	L115A1 D	0	1000	86400	2	1	2	0	0	0
10043203	300005017	L115A1 D	0	1000	2592000	2	1	2	0	0	0
10040802	300005018	M4 SPR Lvl-1	0	1000	500	1	1	2	0	0	0
10040801	300005018	M4 SPR Lvl-1	0	1000	100	1	1	2	0	0	0
10043302	300005019	M4 SRP Lvl-2	0	1000	604800	2	1	2	0	0	0
10043303	300005019	M4 SRP Lvl-2	0	1000	2592000	2	1	2	0	0	0
10043301	300005019	M4 SRP Lvl-2	0	1000	86400	2	1	2	0	0	0
10043403	300005020	M4 SRP Lvl-3	1	1	2592000	2	1	2	0	0	0
10043402	300005020	M4 SRP Lvl-3	1	1	604800	2	1	2	0	0	0
10043401	300005020	M4 SRP Lvl-3	1	1	86400	2	1	2	0	0	0
10041402	300005021	Rangemaster .338	0	1000	500	1	1	2	0	0	0
10041401	300005021	Rangemaster .338	0	1000	100	1	1	2	0	0	0
10043502	300005022	Rangemaster 7.62	0	1000	604800	2	1	2	0	0	0
10043503	300005022	Rangemaster 7.62	0	1000	2592000	2	1	2	0	0	0
10043501	300005022	Rangemaster 7.62	1	1	86400	2	1	2	0	0	0
10043602	300005023	Rangemaster 7.62 STBY	0	1000	604800	2	1	2	0	0	0
10043601	300005023	Rangemaster 7.62 STBY	0	1000	86400	2	1	2	0	0	0
10043603	300005023	Rangemaster 7.62 STBY	0	1000	2592000	2	1	2	0	0	0
10041801	300005024	PSG-1 Gold	0	1000	100	1	1	2	0	16	0
10041802	300005024	PSG-1 Gold	0	1000	500	1	1	2	0	16	0
10043803	300005028	Dragunov D	0	1000	2592000	2	1	2	0	0	0
10043802	300005028	Dragunov D	0	1000	604800	2	1	2	0	0	0
10043801	300005028	Dragunov D	0	1000	86400	2	1	2	0	0	0
10040501	300005029	VSK94	0	1000	100	1	1	2	0	0	0
10040502	300005029	VSK94	0	1000	500	1	1	2	0	0	0
10040701	300005030	Cheytac M200	0	1000	100	1	1	2	0	0	0
10040702	300005030	Cheytac M200	0	1000	500	1	1	2	0	0	0
10043902	300005031	Winchester M70	0	1000	604800	2	1	2	0	0	0
10043903	300005031	Winchester M70	0	1000	2592000	2	1	2	0	0	0
10043901	300005031	Winchester M70	0	1000	86400	2	1	2	0	0	0
10044003	300005033	L115A1 E-Sport	0	1000	2592000	2	1	2	0	0	0
10044001	300005033	L115A1 E-Sport	0	1000	86400	2	1	2	0	0	0
10044002	300005033	L115A1 E-Sport	0	1000	604800	2	1	2	0	0	0
10041001	300005034	DSR-1	0	1000	100	1	1	2	0	0	0
10041002	300005034	DSR-1	0	1000	500	1	1	2	0	0	0
10041202	300005035	SVU	0	1000	500	1	1	2	0	0	0
10041201	300005035	SVU	0	1000	100	1	1	2	0	0	0
10044102	300005036	L115A1 SE	0	1000	604800	2	1	2	0	0	0
10044103	300005036	L115A1 SE	0	1000	2592000	2	1	2	0	0	0
10044101	300005036	L115A1 SE	0	1000	86400	2	1	2	0	0	0
10044303	300005052	Cheytac M200 GRS	0	1000	2592000	2	1	2	0	0	0
10044302	300005052	Cheytac M200 GRS	0	1000	604800	2	1	2	0	0	0
10044301	300005052	Cheytac M200 GRS	0	1000	86400	2	1	2	0	0	0
10044401	300005055	Cheytac M200 GSL	0	1000	86400	2	1	2	0	0	0
10044402	300005055	Cheytac M200 GSL	0	1000	604800	2	1	2	0	0	0
10044403	300005055	Cheytac M200 GSL	0	1000	2592000	2	1	2	0	0	0
10044501	300005057	Cheytac M200 Bloody	0	1000	86400	2	1	2	0	0	0
10044502	300005057	Cheytac M200 Bloody	0	1000	604800	2	1	2	0	0	0
10044503	300005057	Cheytac M200 Bloody	0	1000	2592000	2	1	2	0	0	0
10042001	300005059	PSG1 Reload	0	1000	100	1	1	2	0	0	0
10042002	300005059	PSG1 Reload	0	1000	500	1	1	2	0	0	0
10042101	300005060	Rangermaster .338 Reload	0	1000	100	1	1	2	0	0	0
10042102	300005060	Rangermaster .338 Reload	0	1000	2592000	2	1	2	0	0	0
10044603	300005064	L115A1 LATIN3	0	1000	2592000	2	1	2	0	0	0
10044601	300005064	L115A1 LATIN3	0	1000	86400	2	1	2	0	0	0
10044602	300005064	L115A1 LATIN3	0	1000	604800	2	1	2	0	0	0
10044701	300005065	L115A1 BR Camo	0	1000	86400	2	1	2	0	0	0
10044702	300005065	L115A1 BR Camo	0	1000	604800	2	1	2	0	0	0
10044703	300005065	L115A1 BR Camo	0	1000	2592000	2	1	2	0	0	0
10040401	300005068	XM2010	0	1000	100	1	1	2	0	0	0
10040402	300005068	XM2010	0	1000	500	1	1	2	0	0	0
10044801	300005071	Cheytac M200 TH 1st Anniversary	0	1000	86400	2	1	2	0	0	0
10044803	300005071	Cheytac M200 TH 1st Anniversary	0	1000	2592000	2	1	2	0	0	0
10044802	300005071	Cheytac M200 TH 1st Anniversary	0	1000	604800	2	1	2	0	0	0
10040602	300005072	Walther WA2000	0	1000	500	1	1	2	0	0	0
10040601	300005072	Walther WA2000	0	1000	100	1	1	2	0	0	0
10044902	300005073	Cheytac M200 R	0	1000	604800	2	1	2	0	0	0
10044903	300005073	Cheytac M200 R	0	1000	2592000	2	1	2	0	0	0
10044901	300005073	Cheytac M200 R	0	1000	2592000	2	1	2	0	0	0
10045003	300005075	PSG1 Elite	0	1000	2592000	2	1	2	0	0	3
10045002	300005075	PSG1 Elite	0	1000	604800	2	1	2	0	0	0
10045001	300005075	PSG1 Elite	0	1000	86400	2	1	2	0	0	0
10045101	300005076	Dragunov Elite	0	1000	86400	2	1	2	0	0	3
10045102	300005076	Dragunov Elite	0	1000	604800	2	1	2	0	0	3
10045103	300005076	Dragunov Elite	0	1000	2592000	2	1	2	0	0	3
10045201	300005077	SVU Elite	0	1000	86400	2	1	2	0	0	0
10045203	300005077	SVU Elite	0	1000	2592000	2	1	2	0	0	3
10045202	300005077	SVU Elite	0	1000	604800	2	1	2	0	0	3
10045302	300005078	VSK94 Elite	0	1000	604800	2	1	2	0	0	3
10045301	300005078	VSK94 Elite	0	1000	86400	2	1	2	0	0	3
10045303	300005078	VSK94 Elite	0	1000	2592000	2	1	2	0	0	0
10045401	300005079	Cheytac M200 Inferno	0	1000	86400	2	1	2	0	0	0
10045403	300005079	Cheytac M200 Inferno	0	1000	2592000	2	1	2	0	0	0
10045402	300005079	Cheytac M200 Inferno	0	1000	604800	2	1	2	0	0	0
10045501	300005080	Cheytac M200 PBNC5	0	1000	86400	2	1	2	0	0	0
10045502	300005080	Cheytac M200 PBNC5	0	1000	604800	2	1	2	0	0	0
10045503	300005080	Cheytac M200 PBNC5	0	1000	2592000	2	1	2	0	0	0
10045601	300005081	L115A1 GSL2014	0	1000	86400	2	1	2	0	0	0
10045603	300005081	L115A1 GSL2014	0	1000	2592000	2	1	2	0	0	0
10045602	300005081	L115A1 GSL2014	0	1000	604800	2	1	2	0	0	0
10045801	300005083	Cheytac M200 Brazuca	0	1000	2592000	2	1	2	0	0	0
10045803	300005083	Cheytac M200 Brazuca	0	1000	2592000	2	1	2	0	0	0
10045802	300005083	Cheytac M200 Brazuca	0	1000	604800	2	1	2	0	0	0
10045901	300005084	Cheytac M200 Champion	0	1000	86400	2	1	2	0	0	0
10045902	300005084	Cheytac M200 Champion	0	1000	604800	2	1	2	0	0	0
10045903	300005084	Cheytac M200 Champion	0	1000	2592000	2	1	2	0	0	0
10046003	300005085	Cheytac M200 W.O.E	0	1000	2592000	2	1	2	0	0	0
10046002	300005085	Cheytac M200 W.O.E	0	1000	604800	2	1	2	0	0	0
10046001	300005085	Cheytac M200 W.O.E	0	1000	86400	2	1	2	0	0	0
10053803	300005086	Dragunov W.O.E	0	1000	2592000	2	1	2	0	0	0
10053802	300005086	Dragunov W.O.E	0	1000	604800	2	1	2	0	0	0
10053801	300005086	Dragunov W.O.E	0	1000	86400	2	1	2	0	0	0
10053903	300005087	Cheytac M200 PBIC2014	0	1000	2592000	2	1	2	0	0	0
10053902	300005087	Cheytac M200 PBIC2014	0	1000	604800	2	1	2	0	0	0
10053901	300005087	Cheytac M200 PBIC2014	0	1000	86400	2	1	2	0	0	0
10041302	300005089	L115A1 PC Cafe	0	1000	500	1	1	2	4	0	0
10041301	300005089	L115A1 PC Cafe	0	1000	100	1	1	2	4	0	0
10054002	300005090	Cheytac M200 Merdeka (Tiger)	0	1000	604800	2	1	2	0	0	0
10054003	300005090	Cheytac M200 Merdeka (Tiger)	0	1000	2592000	2	1	2	0	0	0
10054001	300005090	Cheytac M200 Merdeka (Tiger)	0	1000	86400	2	1	2	0	0	0
10054102	300005091	Cheytac M200 G E-Sport	0	1000	604800	2	1	2	0	0	0
10054101	300005091	Cheytac M200 G E-Sport	0	1000	86400	2	1	2	0	0	0
10054103	300005091	Cheytac M200 G E-Sport	0	1000	2592000	2	1	2	0	0	0
10054202	300005092	L115A1 Toy	0	1000	604800	2	1	2	0	0	0
10054201	300005092	L115A1 Toy	0	1000	86400	2	1	2	0	0	0
10054203	300005092	L115A1 Toy	0	1000	2592000	2	1	2	0	0	0
10054303	300005093	VSK94 Gold	0	1000	2592000	2	1	2	0	0	0
10054302	300005093	VSK94 Gold	0	1000	604800	2	1	2	0	0	0
10054301	300005093	VSK94 Gold	0	1000	86400	2	1	2	0	0	0
10054403	300005094	SVU Gold	0	1000	2592000	2	1	2	0	0	0
10054401	300005094	SVU Gold	0	1000	86400	2	1	2	0	0	0
10054402	300005094	SVU Gold	0	1000	604800	2	1	2	0	0	0
10054501	300005095	DSR-1 Gold	0	1000	2592000	2	1	2	0	0	0
10054502	300005095	DSR-1 Gold	0	1000	604800	2	1	2	0	0	0
10054503	300005095	DSR-1 Gold	0	1000	2592000	2	1	2	0	0	0
10054603	300005096	Cheytac M200 LATIN4	0	1000	2592000	2	1	2	0	0	0
10054602	300005096	Cheytac M200 LATIN4	0	1000	604800	2	1	2	0	0	0
10054601	300005096	Cheytac M200 LATIN4	0	1000	86400	2	1	2	0	0	0
10054702	300005097	Cheytac M200 Cangaceiro	0	1000	604800	2	1	2	0	0	0
10054701	300005097	Cheytac M200 Cangaceiro	0	1000	86400	2	1	2	0	0	0
10054703	300005097	Cheytac M200 Cangaceiro	0	1000	2592000	2	1	2	0	0	0
10054801	300005098	DSR-1 D.	0	1000	86400	2	1	2	0	0	0
10054802	300005098	DSR-1 D.	0	1000	604800	2	1	2	0	0	0
10054803	300005098	DSR-1 D.	0	1000	2592000	2	1	2	0	0	0
10054901	300005099	Cheytac M200 CoupleBreaker	0	1000	86400	2	1	2	0	0	0
10054902	300005099	Cheytac M200 CoupleBreaker	0	1000	604800	2	1	2	0	0	0
10054903	300005099	Cheytac M200 CoupleBreaker	0	1000	2592000	2	1	2	0	0	0
10055003	300005100	Cheytac M200 GRS2	0	1000	2592000	2	1	2	0	0	0
10055002	300005100	Cheytac M200 GRS2	0	1000	604800	2	1	2	0	0	0
10055001	300005100	Cheytac M200 GRS2	0	1000	86400	2	1	2	0	0	0
10055101	300005101	L115A1 Newborn 2015	0	1000	86400	2	1	2	0	0	0
10055103	300005101	L115A1 Newborn 2015	0	1000	2592000	2	1	2	0	0	0
10055102	300005101	L115A1 Newborn 2015	0	1000	604800	2	1	2	0	0	0
10055201	300005102	Cheytac M200 GSL2015	0	1000	86400	2	1	2	0	0	0
10055203	300005102	Cheytac M200 GSL2015	0	1000	2592000	2	1	2	0	0	0
10055202	300005102	Cheytac M200 GSL2015	0	1000	604800	2	1	2	0	0	0
10055303	300005104	Cheytac M200 Ongame	0	1000	2592000	2	1	2	0	0	0
10055302	300005104	Cheytac M200 Ongame	0	1000	604800	2	1	2	0	0	0
10055301	300005104	Cheytac M200 Ongame	0	1000	86400	2	1	2	0	0	0
10055401	300005105	Cheytac M200 Redemption	0	1000	86400	2	1	2	0	0	0
10055403	300005105	Cheytac M200 Redemption	0	1000	2592000	2	1	2	0	0	0
10055402	300005105	Cheytac M200 Redemption	0	1000	604800	2	1	2	0	0	0
10055503	300005106	L115A1 Summer	0	1000	2592000	2	1	2	1	0	0
10055501	300005106	L115A1 Summer	0	1000	86400	2	1	2	1	0	0
10055502	300005106	L115A1 Summer	0	1000	604800	2	1	2	1	0	0
10055602	300005107	Dragunov Rose	0	1000	2592000	2	1	2	0	0	0
10055603	300005107	Dragunov Rose	0	1000	2592000	2	1	2	0	0	0
10055601	300005107	Dragunov Rose	0	1000	2592000	2	1	2	0	0	0
10055702	300005108	Cheytac M200 Lionflame	0	1000	604800	2	1	2	0	0	0
10055703	300005108	Cheytac M200 Lionflame	0	1000	2592000	2	1	2	0	0	0
10055701	300005108	Cheytac M200 Lionflame	0	1000	86400	2	1	2	0	0	0
10042503	300005109	L115A1 Harimau	0	1000	2592000	2	1	2	0	0	0
10042502	300005109	L115A1 Harimau	0	1000	604800	2	1	2	0	0	0
10042501	300005109	L115A1 Harimau	0	1000	86400	2	1	2	0	0	0
10046101	300005110	Cheytac M200 Brazil	0	1000	86400	2	1	2	0	0	0
10046102	300005110	Cheytac M200 Brazil	0	1000	604800	2	1	2	0	0	0
10046103	300005110	Cheytac M200 Brazil	0	1000	2592000	2	1	2	0	0	0
10046201	300005111	Cheytac M200 PBST2015	0	1000	86400	2	1	2	0	0	0
10046203	300005111	Cheytac M200 PBST2015	0	1000	2592000	2	1	2	0	0	0
10046202	300005111	Cheytac M200 PBST2015	0	1000	604800	2	1	2	0	0	0
10046303	300005112	Cheytac M200 4Game	0	1000	2592000	2	1	2	0	0	0
10046301	300005112	Cheytac M200 4Game	0	1000	86400	2	1	2	0	0	0
10046302	300005112	Cheytac M200 4Game	0	1000	604800	2	1	2	0	0	0
10046401	300005113	Cheytac M200 4Game SE	0	1000	86400	2	1	2	0	0	0
10046402	300005113	Cheytac M200 4Game SE	0	1000	604800	2	1	2	0	0	0
10046403	300005113	Cheytac M200 4Game SE	0	1000	2592000	2	1	2	0	0	0
10046503	300005114	Cheytac M200 PBNC2015	0	1000	2592000	2	1	2	0	0	0
10046501	300005114	Cheytac M200 PBNC2015	0	1000	2592000	2	1	2	0	0	0
10046502	300005114	Cheytac M200 PBNC2015	0	1000	604800	2	1	2	0	0	0
10046602	300005115	Cheytac M200 PBTC2015	0	1000	604800	2	1	2	0	0	0
10046601	300005115	Cheytac M200 PBTC2015	0	1000	86400	2	1	2	0	0	0
10046603	300005115	Cheytac M200 PBTC2015	0	1000	2592000	2	1	2	0	0	0
10046702	300005116	SVU PBTC2015	0	1000	604800	2	1	2	0	0	0
10046701	300005116	SVU PBTC2015	0	1000	86400	2	1	2	0	0	0
10046703	300005116	SVU PBTC2015	0	1000	2592000	2	1	2	0	0	0
10046801	300005117	L115A1 Mech	0	1000	86400	2	1	2	0	0	0
10046803	300005117	L115A1 Mech	0	1000	2592000	2	1	2	0	0	0
10046802	300005117	L115A1 Mech	0	1000	604800	2	1	2	0	0	0
10046902	300005118	Cheytac M200 DarkDays	0	1000	604800	2	1	2	0	0	0
10046903	300005118	Cheytac M200 DarkDays	0	1000	2592000	2	1	2	0	0	0
10046901	300005118	Cheytac M200 DarkDays	0	1000	86400	2	1	2	0	0	0
10047002	300005119	XM2010 PBNC2015US	0	1000	604800	2	1	2	0	0	0
10047003	300005119	XM2010 PBNC2015US	0	1000	2592000	2	1	2	0	0	0
10047001	300005119	XM2010 PBNC2015US	0	1000	86400	2	1	2	0	0	0
10047102	300005120	Cheytac M200 PBIC2015	0	1000	2592000	2	1	2	0	0	0
10047101	300005120	Cheytac M200 PBIC2015	0	1000	86400	2	1	2	0	0	0
10047103	300005120	Cheytac M200 PBIC2015	0	1000	2592000	2	1	2	0	0	3
10047202	300005121	Cheytac M200 Gold	0	1000	604800	2	1	2	0	0	0
10047203	300005121	Cheytac M200 Gold	0	1000	2592000	2	1	2	0	0	0
10047201	300005121	Cheytac M200 Gold	0	1000	86400	2	1	2	0	0	0
10047301	300005122	Cheytac M200 VeraCruz	0	1000	86400	2	1	2	0	0	0
10047303	300005122	Cheytac M200 VeraCruz	0	1000	2592000	2	1	2	0	0	0
10047302	300005122	Cheytac M200 VeraCruz	0	1000	604800	2	1	2	0	0	0
10041602	300005123	Tactilite T2	0	1000	2592000	2	1	2	0	0	0
10041601	300005123	Tactilite T2	0	1000	100	1	1	2	0	0	0
10047402	300005124	Cheytac M200 Sheep	0	1000	604800	2	1	2	0	0	0
10047401	300005124	Cheytac M200 Sheep	0	1000	86400	2	1	2	0	0	0
10047403	300005124	Cheytac M200 Sheep	0	1000	2592000	2	1	2	0	0	0
10047501	300005125	L115A1 Basketball	0	1000	86400	2	1	2	0	0	0
10047503	300005125	L115A1 Basketball	0	1000	2592000	2	1	2	0	0	0
10047502	300005125	L115A1 Basketball	0	1000	604800	2	1	2	0	0	0
10047601	300005126	Cheytac M200 Medical	0	1000	2592000	2	1	2	1	0	0
10047603	300005126	Cheytac M200 Medical	1	1	2592000	2	1	2	0	0	0
10047602	300005126	Cheytac M200 Medical	0	1000	604800	2	1	2	0	0	0
10047701	300005127	L115A1 Cobra	0	1000	86400	2	1	2	0	0	0
10047702	300005127	L115A1 Cobra	1	1	604800	2	1	2	0	0	0
10047703	300005127	L115A1 Cobra	1	1	2592000	2	1	2	0	0	0
10047802	300005128	Rangermaster .338 Camo Soldier	0	1000	604800	2	1	2	0	0	0
10047801	300005128	Rangermaster .338 Camo Soldier	0	1000	86400	2	1	2	0	0	0
10047803	300005128	Rangermaster .338 Camo Soldier	0	1000	2592000	2	1	2	0	0	0
10047902	300005130	Cheytac M200 Steam	0	1000	2592000	2	1	2	0	0	0
10047903	300005130	Cheytac M200 Steam	0	1000	2592000	2	1	2	0	0	0
10047901	300005130	Cheytac M200 Steam	0	1000	86400	2	1	2	0	0	0
10048002	300005131	Cheytac M200 Halloween	0	1000	604800	2	1	2	0	0	0
10048001	300005131	Cheytac M200 Halloween	0	1000	86400	2	1	2	0	0	0
10048003	300005131	Cheytac M200 Halloween	0	1000	2592000	2	1	2	0	0	0
10048101	300005132	Tactilite T2 G.	0	1000	86400	2	1	2	0	0	0
10048102	300005132	Tactilite T2 G.	0	1000	604800	2	1	2	0	0	0
10048103	300005132	Tactilite T2 G.	0	1000	2592000	2	1	2	0	0	0
10048202	300005133	DSR-1 SPY	0	1000	604800	2	1	2	0	0	0
10048201	300005133	DSR-1 SPY	0	1000	86400	2	1	2	0	0	0
10048203	300005133	DSR-1 SPY	0	1000	2592000	2	1	2	0	0	0
10048301	300005134	Cheytac M200 Latin5	0	1000	86400	2	1	2	0	0	0
10048303	300005134	Cheytac M200 Latin5	0	1000	2592000	2	1	2	0	0	0
10048302	300005134	Cheytac M200 Latin5	0	1000	604800	2	1	2	0	0	0
10048403	300005135	Cheytac M200 Obsidian	0	1000	2592000	2	1	2	0	0	0
10048401	300005135	Cheytac M200 Obsidian	0	1000	2592000	2	1	2	0	0	0
10048402	300005135	Cheytac M200 Obsidian	0	1000	604800	2	1	2	0	0	0
10048501	300005136	DSR-1 Spy-Deluxe	0	1000	86400	2	1	2	0	0	0
10048502	300005136	DSR-1 Spy-Deluxe	0	1000	604800	2	1	2	0	0	0
10048503	300005136	DSR-1 Spy-Deluxe	0	1000	2592000	2	1	2	0	0	0
10048603	300005137	Cheytac M200 DFN	0	1000	2592000	2	1	2	0	0	0
10048601	300005137	Cheytac M200 DFN	0	1000	86400	2	1	2	0	0	0
10048602	300005137	Cheytac M200 DFN	0	1000	604800	2	1	2	0	0	0
10048703	300005138	Cheytac M200 XMAS2015	0	1000	2592000	2	1	2	0	0	0
10048701	300005138	Cheytac M200 XMAS2015	0	1000	86400	2	1	2	0	0	0
10048702	300005138	Cheytac M200 XMAS2015	0	1000	604800	2	1	2	0	0	0
10048801	300005139	Tactilite T2 XMAS2015	0	1000	86400	2	1	2	0	0	0
10048803	300005139	Tactilite T2 XMAS2015	0	1000	2592000	2	1	2	0	0	0
10048802	300005139	Tactilite T2 XMAS2015	0	1000	604800	2	1	2	0	0	0
10048902	300005140	Cheytac M200 Monkey	0	1000	604800	2	1	2	0	0	0
10048903	300005140	Cheytac M200 Monkey	0	1000	2592000	2	1	2	0	0	0
10048901	300005140	Cheytac M200 Monkey	0	1000	86400	2	1	2	0	0	0
10049002	300005141	Cheytac M200 Arena Normal	0	1000	604800	2	1	2	0	0	0
10049003	300005141	Cheytac M200 Arena Normal	0	1000	2592000	2	1	2	0	0	0
10049001	300005141	Cheytac M200 Arena Normal	0	1000	86400	2	1	2	0	0	0
10049101	300005142	Cheytac M200 Arena Deluxe	0	1000	86400	2	1	2	0	0	0
10049103	300005142	Cheytac M200 Arena Deluxe	0	1000	2592000	2	1	2	0	0	0
10049102	300005142	Cheytac M200 Arena Deluxe	0	1000	604800	2	1	2	0	0	0
10049203	300005143	Cheytac M200 Vera Cruz 2016	0	1000	2592000	2	1	2	0	0	0
10049202	300005143	Cheytac M200 Vera Cruz 2016	0	1000	604800	2	1	2	0	0	0
10049201	300005143	Cheytac M200 Vera Cruz 2016	0	1000	2592000	2	1	2	0	0	0
10049303	300005144	Cheytac M200 Silence	0	1000	2592000	2	1	2	0	0	3
10049301	300005144	Cheytac M200 Silence	0	1000	86400	2	1	2	0	0	3
10049302	300005144	Cheytac M200 Silence	0	1000	604800	2	1	2	0	0	3
10041901	300005145	PGM Hecate2	0	1000	100	1	1	2	0	0	0
10041902	300005145	PGM Hecate2	0	1000	500	1	1	2	0	0	0
10049402	300005146	PGM-Hecate2 G.	0	1000	604800	2	1	2	0	0	0
10049401	300005146	PGM-Hecate2 G.	0	1000	86400	2	1	2	0	0	0
10049403	300005146	PGM-Hecate2 G.	0	1000	2592000	2	1	2	0	0	0
10049502	300005147	Cheytac M200 Cupid	0	1000	604800	2	1	2	0	0	3
10049501	300005147	Cheytac M200 Cupid	0	1000	86400	2	1	2	0	0	3
10049503	300005147	Cheytac M200 Cupid	0	1000	2592000	2	1	2	0	0	3
10049701	300005149	Cheytac M200 Serpent	0	1000	86400	2	1	2	0	0	3
10049702	300005149	Cheytac M200 Serpent	0	1000	604800	2	1	2	0	0	3
10049703	300005149	Cheytac M200 Serpent	0	1000	2592000	2	1	2	0	0	3
10049802	300005150	Cheytac M200 GRS3	0	1000	604800	2	1	2	0	0	0
10049801	300005150	Cheytac M200 GRS3	0	1000	86400	2	1	2	0	0	0
10049803	300005150	Cheytac M200 GRS3	0	1000	2592000	2	1	2	0	0	0
10049903	300005151	Cheytac M200 Beast	0	1000	2592000	2	1	2	0	0	0
10049902	300005151	Cheytac M200 Beast	0	1000	604800	2	1	2	0	0	3
10049901	300005151	Cheytac M200 Beast	0	1000	86400	2	1	2	0	0	3
10050002	300005152	Cheytac M200 PBGC	1	1	604800	2	1	2	0	0	0
10050001	300005152	Cheytac M200 PBGC	1	1	86400	2	1	2	0	0	0
10050003	300005152	Cheytac M200 PBGC	1	1	2592000	2	1	2	0	0	0
10050103	300005153	Cheytac M200 GSL2016	0	1000	2592000	2	1	2	0	0	0
10050101	300005153	Cheytac M200 GSL2016	1	1	86400	2	1	2	0	0	0
10050102	300005153	Cheytac M200 GSL2016	0	1000	604800	2	1	2	0	0	0
10050202	300005154	Tactilite T2 GSL2016	0	1000	604800	2	1	2	0	0	0
10050203	300005154	Tactilite T2 GSL2016	0	1000	2592000	2	1	2	0	0	0
10050201	300005154	Tactilite T2 GSL2016\t\t	0	1000	86400	2	1	2	0	0	0
10050303	300005155	Cheytac M200 Tiger-Normal	0	1000	2592000	2	1	2	0	0	0
10050301	300005155	Cheytac M200 Tiger-Normal	0	1000	86400	2	1	2	0	0	0
10050302	300005155	Cheytac M200 Tiger-Normal	0	1000	604800	2	1	2	0	0	0
10050402	300005156	Cheytac M200 Tiger-Deluxe	0	1000	604800	2	1	2	0	0	0
10050401	300005156	Cheytac M200 Tiger-Deluxe	0	1000	86400	2	1	2	0	0	0
10050403	300005156	Cheytac M200 Tiger-Deluxe	0	1000	2592000	2	1	2	0	0	0
10041101	300005157	AS 50	0	1000	100	2	1	2	0	0	0
10041102	300005157	AS 50	0	1000	500	1	1	2	0	0	0
10050501	300005158	Cheytac M200 Midnight2	0	1000	86400	2	1	2	0	0	0
10050503	300005158	Cheytac M200 Midnight2	0	1000	2592000	2	1	2	0	0	0
10050502	300005158	Cheytac M200 Midnight2	0	1000	604800	2	1	2	0	0	0
10050602	300005159	AS 50 G.	0	1000	604800	2	1	2	0	0	0
10050601	300005159	AS 50 G.	0	1000	86400	2	1	2	0	0	0
10050603	300005159	AS 50 G.	0	1000	2592000	2	1	2	0	0	0
10050701	300005160	Cheytac M200 Skeleton	0	1000	86400	2	1	2	0	0	0
10050703	300005160	Cheytac M200 Skeleton	0	1000	2592000	2	1	2	0	0	0
10050702	300005160	Cheytac M200 Skeleton	0	1000	604800	2	1	2	0	0	0
10050802	300005161	Tactilite T2 E-Sports2	0	1000	604800	2	1	2	0	0	0
10050803	300005161	Tactilite T2 E-Sports2	0	1000	2592000	2	1	2	0	0	0
10050801	300005161	Tactilite T2 E-Sports2	0	1000	86400	2	1	2	0	0	0
10050903	300005162	Tactilite T2 Dragon	0	1000	2592000	2	1	2	0	0	0
10050901	300005162	Tactilite T2 Dragon	0	1000	86400	2	1	2	0	0	0
10050902	300005162	Tactilite T2 Dragon	0	1000	604800	2	1	2	0	0	0
10051003	300005163	Tactilite T2 PBWC2016	0	1000	2592000	2	1	2	0	0	0
10051002	300005163	Tactilite T2 PBWC2016	0	1000	604800	2	1	2	0	0	0
10051001	300005163	Tactilite T2 PBWC2016	0	1000	86400	2	1	2	0	0	0
10051102	300005164	AS 50 D.	0	1000	604800	2	1	2	0	0	0
10051101	300005164	AS 50 D.	0	1000	86400	2	1	2	0	0	0
10051103	300005164	AS 50 D.	0	1000	2592000	2	1	2	0	0	0
10051201	300005165	Cheytac M200 ID 1stAnni	0	1000	86400	2	1	2	0	0	0
10051203	300005165	Cheytac M200 ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
10051202	300005165	Cheytac M200 ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
10051301	300005166	Cheytac M200 Strike	0	1000	86400	2	1	2	0	0	0
10051302	300005166	Cheytac M200 Strike	0	1000	604800	2	1	2	0	0	0
10051303	300005166	Cheytac M200 Strike	0	1000	2592000	2	1	2	0	0	0
10051403	300005167	Cheytac M200 Demonic	0	1000	2592000	2	1	2	0	0	0
10051401	300005167	Cheytac M200 Demonic	0	1000	86400	2	1	2	0	0	0
10051402	300005167	Cheytac M200 Demonic	0	1000	604800	2	1	2	0	0	0
10051501	300005168	Cheytac M200 Dolphin	0	1000	86400	2	1	2	0	0	0
10051503	300005168	Cheytac M200 Dolphin	0	1000	2592000	2	1	2	0	0	0
10051502	300005168	Cheytac M200 Dolphin	0	1000	604800	2	1	2	0	0	0
10051602	300005169	L115A1 Dolphin	0	1000	604800	2	1	2	0	0	0
10051601	300005169	L115A1 Dolphin	0	1000	86400	2	1	2	0	0	0
10051603	300005169	L115A1 Dolphin	0	1000	2592000	2	1	2	0	0	0
10051701	300005170	Cheytac M200 Blue Diamond	0	1000	86400	2	1	2	0	0	0
10051702	300005170	Cheytac M200 Blue Diamond	0	1000	604800	2	1	2	0	0	0
10051703	300005170	Cheytac M200 Blue Diamond	0	1000	2592000	2	1	2	0	0	0
10051803	300005171	Tactilite T2 Blue Diamond	0	1000	2592000	2	1	2	0	0	0
10051801	300005171	Tactilite T2 Blue Diamond	0	1000	86400	2	1	2	0	0	0
10051802	300005171	Tactilite T2 Blue Diamond	0	1000	604800	2	1	2	0	0	0
10051901	300005172	Cheytac M200 Lebaran2016	0	1000	86400	2	1	2	0	0	0
10051903	300005172	Cheytac M200 Lebaran2016	0	1000	2592000	2	1	2	0	0	0
10051902	300005172	Cheytac M200 Lebaran2016	0	1000	604800	2	1	2	0	0	0
10052001	300005173	Cheytac M200 Alien	0	1000	86400	2	1	2	0	0	0
10052003	300005173	Cheytac M200 Alien	0	1000	2592000	2	1	2	0	0	0
10052002	300005173	Cheytac M200 Alien	0	1000	604800	2	1	2	0	0	0
10052101	300005174	L115A1 Alien	0	1000	86400	2	1	2	0	0	0
10052103	300005174	L115A1 Alien	0	1000	2592000	2	1	2	0	0	0
10052102	300005174	L115A1 Alien	0	1000	604800	2	1	2	0	0	0
10052201	300005175	Cheytac M200 Woody	0	1000	2592000	2	1	2	0	0	0
10052203	300005175	Cheytac M200 Woody	0	1000	2592000	2	1	2	0	0	0
10052202	300005175	Cheytac M200 Woody	0	1000	604800	2	1	2	0	0	0
10052302	300005176	Tactilite T2 Newborn2016	0	1000	604800	2	1	2	0	0	0
10052301	300005176	Tactilite T2 Newborn2016	0	1000	86400	2	1	2	0	0	0
10052303	300005176	Tactilite T2 Newborn2016	0	1000	2592000	2	1	2	0	0	0
10052402	300005177	Tactilite T2 Puzzle	0	1000	604800	2	1	2	0	0	0
10052401	300005177	Tactilite T2 Puzzle	0	1000	86400	2	1	2	0	0	0
10052403	300005177	Tactilite T2 Puzzle	0	1000	2592000	2	1	2	0	0	0
10052501	300005178	Dragunov Russian Normal	0	1000	86400	2	1	2	4	0	0
10052502	300005178	Dragunov Russian Normal	0	1000	604800	2	1	2	4	0	0
10052503	300005178	Dragunov Russian Normal	0	1000	2592000	2	1	2	4	0	0
10052602	300005179	Dragunov Russian Deluxe	0	1000	604800	2	1	2	4	0	0
10052603	300005179	Dragunov Russian Deluxe	0	1000	2592000	2	1	2	4	0	0
10052601	300005179	Dragunov Russian Deluxe	0	1000	86400	2	1	2	4	0	0
10052702	300005180	Tactilite T2 Liberty	0	1000	604800	2	1	2	0	0	0
10052703	300005180	Tactilite T2 Liberty	0	1000	2592000	2	1	2	0	0	0
10052701	300005180	Tactilite T2 Liberty	0	1000	86400	2	1	2	0	0	0
10052803	300005181	Cheytac M200 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10052801	300005181	Cheytac M200 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10052802	300005181	Cheytac M200 PBIC2016	0	1000	604800	2	1	2	0	0	0
10052901	300005182	Tactilite T2 PBIC2016	0	1000	86400	2	1	2	0	0	0
10052902	300005182	Tactilite T2 PBIC2016	0	1000	604800	2	1	2	0	0	0
10052903	300005182	Tactilite T2 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10053002	300005183	Cheytac M200 PBTC2016	0	1000	604800	2	1	2	0	0	0
10053003	300005183	Cheytac M200 PBTC2016	0	1000	2592000	2	1	2	0	0	0
10053001	300005183	Cheytac M200 PBTC2016	0	1000	86400	2	1	2	0	0	0
10053101	300005184	AS-50 PBTC2016	0	1000	86400	2	1	2	0	0	0
10053103	300005184	AS-50 PBTC2016	0	1000	2592000	2	1	2	0	0	0
10053102	300005184	AS-50 PBTC2016	0	1000	604800	2	1	2	0	0	0
10053303	300005186	Cheytac M200 PBNC2016	0	1000	2592000	2	1	2	0	0	0
10053301	300005186	Cheytac M200 PBNC2016	0	1000	86400	2	1	2	0	0	0
10053302	300005186	Cheytac M200 PBNC2016	0	1000	604800	2	1	2	0	0	0
10053401	300005187	Cheytac M200 PBST2016	0	1000	86400	2	1	2	0	0	0
10053403	300005187	Cheytac M200 PBST2016	0	1000	2592000	2	1	2	0	0	0
10053402	300005187	Cheytac M200 PBST2016	0	1000	604800	2	1	2	0	0	0
10053501	300005188	Cheytac M200 SUPREME	0	1000	86400	2	1	2	0	0	0
10053503	300005188	Cheytac M200 SUPREME	0	1000	2592000	2	1	2	0	0	0
10053502	300005188	Cheytac M200 SUPREME	0	1000	604800	2	1	2	0	0	0
10053601	300005189	Cheytac M200 Halloween 2016	0	1000	86400	2	1	2	0	0	0
10053602	300005189	Cheytac M200 Halloween 2016	0	1000	604800	2	1	2	0	0	0
10053603	300005189	Cheytac M200 Halloween 2016	0	1000	2592000	2	1	2	0	0	0
10053701	300005190	Cheytac M200 Azerbaijan	0	1000	86400	2	1	2	0	0	0
10053702	300005190	Cheytac M200 Azerbaijan	0	1000	604800	2	1	2	0	0	0
10053703	300005190	Cheytac M200 Azerbaijan	0	1000	2592000	2	1	2	0	0	0
130076071	300005232	Barrett M82A1 Nusantara	0	1000	2592000	2	1	2	1	0	0
10065703	300005256	CHEYTAC M200 HALLOWEEN2017	0	1000	2592000	2	1	1	1	0	0
10065701	300005256	CHEYTAC M200 HALLOWEEN2017	0	1000	86400	2	1	1	1	0	0
10065702	300005256	CHEYTAC M200 HALLOWEEN2017	0	1000	604800	2	1	1	1	0	0
10065003	300005261	TACTILITE T2 FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
10065001	300005261	TACTILITE T2 FIREDRAGON	0	1000	86400	2	1	1	0	0	0
10065002	300005261	TACTILITE T2 FIREDRAGON	0	1000	604800	2	1	1	0	0	0
300005284	300005284	L115A1 Nevasca	0	1000	2592000	2	1	2	5	0	0
300005285	300005285	Cheytac M200 Nevasca	0	1000	2592000	2	1	2	5	0	0
130076070	300005292	Barrett M82A1 Premium	0	1000	2592000	2	1	2	1	0	0
10064503	300005300	CHEYTAC M200 DIGITAL	0	1000	2592000	2	1	1	1	0	0
10064501	300005300	CHEYTAC M200 DIGITAL	0	1000	86400	2	1	1	1	0	0
10064502	300005300	CHEYTAC M200 DIGITAL	0	1000	604800	2	1	1	1	0	0
10066403	300005301	TACTILITE T2 M1LGR4U	0	1000	2592000	2	1	1	1	0	0
10066402	300005301	TACTILITE T2 M1LGR4U	0	1000	604800	2	1	1	1	0	0
10066401	300005301	TACTILITE T2 M1LGR4U	0	1000	86400	2	1	1	1	0	0
10066501	300005302	CHEYTAC M200 M1LGR4U	0	1000	86400	2	1	1	1	0	0
10066502	300005302	CHEYTAC M200 M1LGR4U	0	1000	604800	2	1	1	1	0	0
10066503	300005302	CHEYTAC M200 M1LGR4U	0	1000	2592000	2	1	1	1	0	0
10063904	300005304	SNIPER_CHEYTAC_M200_PBWC2018	0	1000	2592000	2	1	1	4	0	0
10063901	300005304	SNIPER_CHEYTAC_M200_PBWC2018	0	1000	2592000	2	1	2	4	0	0
10063903	300005304	SNIPER_CHEYTAC_M200_PBWC2018	0	1000	604800	2	1	1	4	0	0
10064003	300005305	SNIPER_TACTILITE_T2_PBWC2018	0	1000	2592000	2	1	1	4	0	0
10064002	300005305	SNIPER_TACTILITE_T2_PBWC2018	0	1000	604800	2	1	1	4	0	0
10064001	300005305	SNIPER_TACTILITE_T2_PBWC2018	0	1000	86400	2	1	1	4	0	0
140076104	300005309	CheyTac M200 Silence MNB4	0	1000	2592000	2	1	2	1	0	0
300005325	300005325	Tactilite T2 Milkyway	0	1000	2592000	2	1	2	5	0	0
10056401	400006003	SPAS-15	0	1000	100	1	1	2	0	37	0
10056402	400006003	SPAS-15	0	1000	500	1	1	2	0	37	0
10055901	400006004	870MCS W.	0	1000	100	1	1	2	0	35	0
10055902	400006004	870MCS W.	0	1000	500	1	1	2	0	35	0
10056102	400006005	M1887  	0	1000	500	1	1	2	0	0	0
10056101	400006005	M1887  	0	1000	100	1	1	2	0	0	0
10061902	400006006	SPAS-15 SL	0	1000	604800	2	1	2	0	0	0
10061901	400006006	SPAS-15 SL	0	1000	86400	2	1	2	0	0	0
10061903	400006006	SPAS-15 SL	0	1000	2592000	2	1	2	0	0	0
10062003	400006010	M1887 W. 	0	1000	2592000	2	1	2	0	0	0
10062001	400006010	M1887 W. 	0	1000	86400	2	1	2	0	0	0
10062002	400006010	M1887 W. 	0	1000	604800	2	1	2	0	0	0
10062103	400006011	870MCS W. D 	0	1000	2592000	2	1	2	0	0	0
10062101	400006011	870MCS W. D 	0	1000	86400	2	1	2	0	0	0
10062102	400006011	870MCS W. D 	0	1000	604800	2	1	2	0	0	0
10062203	400006012	SPAS-15 D 	0	1000	2592000	2	1	2	0	0	0
10062201	400006012	SPAS-15 D 	0	1000	86400	2	1	2	0	0	0
10062202	400006012	SPAS-15 D 	0	1000	604800	2	1	2	0	0	0
10062301	400006014	870MCS SI D 	0	1000	86400	2	1	2	0	0	0
10062302	400006014	870MCS SI D 	0	1000	604800	2	1	2	0	0	0
10062303	400006014	870MCS SI D 	0	1000	2592000	2	1	2	0	0	0
10062403	400006015	870MCS D 	0	1000	2592000	2	1	2	0	0	0
10062401	400006015	870MCS D 	0	1000	86400	2	1	2	0	0	0
10062402	400006015	870MCS D 	0	1000	604800	2	1	2	0	0	0
10062502	400006016	SPAS-15 SI D 	0	1000	604800	2	1	2	0	0	0
10062501	400006016	SPAS-15 SI D 	0	1000	86400	2	1	2	0	0	0
10062503	400006016	SPAS-15 SI D 	0	1000	2592000	2	1	2	0	0	0
10056501	400006017	M1887 D 	0	1000	86400	2	1	2	0	0	0
10056503	400006017	M1887 D 	0	1000	2592000	2	1	2	0	0	0
10056502	400006017	M1887 D 	0	1000	604800	2	1	2	0	0	0
10056602	400006018	SPAS-15 MSC 	0	1000	604800	2	1	2	0	0	0
10056603	400006018	SPAS-15 MSC 	0	1000	2592000	2	1	2	0	0	0
10056601	400006018	SPAS-15 MSC 	0	1000	2592000	2	1	2	0	0	0
10056701	400006019	JackHammer 	0	1000	86400	2	1	2	0	0	0
10056703	400006019	JackHammer 	0	1000	2592000	2	1	2	0	0	0
10056702	400006019	JackHammer 	0	1000	604800	2	1	2	0	0	0
10055801	400006020	Kel-Tec KSG-15	0	1000	100	1	1	2	0	0	0
10055802	400006020	Kel-Tec KSG-15	0	1000	500	1	1	2	0	0	0
10056801	400006021	M1887 SL	0	1000	86400	2	1	2	0	0	0
10056803	400006021	M1887 SL	0	1000	2592000	2	1	2	0	0	0
10056802	400006021	M1887 SL	0	1000	604800	2	1	2	0	0	0
10056901	400006026	M1887 W GRS	0	1000	86400	2	1	2	0	0	0
10056903	400006026	M1887 W GRS	0	1000	2592000	2	1	2	0	0	0
10056902	400006026	M1887 W GRS	0	1000	604800	2	1	2	0	0	0
10057002	400006030	M1887 Bloody	0	1000	604800	2	1	2	0	0	0
10057003	400006030	M1887 Bloody	0	1000	2592000	2	1	2	0	0	0
10057001	400006030	M1887 Bloody	0	1000	86400	2	1	2	0	0	0
10057103	400006032	SPAS-15 Elite	0	1000	2592000	2	1	2	0	0	0
10057102	400006032	SPAS-15 Elite	0	1000	604800	2	1	2	0	0	0
10057101	400006032	SPAS-15 Elite	0	1000	86400	2	1	2	0	0	0
10057203	400006033	M1887 W TH 1st Anniversary	0	1000	2592000	2	1	2	0	0	0
10057202	400006033	M1887 W TH 1st Anniversary	0	1000	604800	2	1	2	0	0	0
10057201	400006033	M1887 W TH 1st Anniversary	0	1000	86400	2	1	2	0	0	0
10057302	400006034	M1887 R	0	1000	604800	2	1	2	0	0	0
10057301	400006034	M1887 R	0	1000	86400	2	1	2	0	0	0
10057303	400006034	M1887 R	0	1000	2592000	2	1	2	0	0	0
10057402	400006035	M1887 PBNC5	0	1000	604800	2	1	2	0	0	0
10057401	400006035	M1887 PBNC5	0	1000	2592000	2	1	2	0	0	0
10057403	400006035	M1887 PBNC5	0	1000	2592000	2	1	2	0	0	0
10057503	400006036	Kel-Tec KSG 15 GSL2014	0	1000	2592000	2	1	2	0	0	0
10057501	400006036	Kel-Tec KSG 15 GSL2014	0	1000	86400	2	1	2	0	0	0
10057502	400006036	Kel-Tec KSG 15 GSL2014	0	1000	604800	2	1	2	0	0	0
10057601	400006037	M1887 Brazuca	0	1000	86400	2	1	2	0	0	0
10057602	400006037	M1887 Brazuca	0	1000	604800	2	1	2	0	0	0
10057603	400006037	M1887 Brazuca	0	1000	2592000	2	1	2	0	0	0
10057703	400006038	M1887 PBIC2014	0	1000	2592000	2	1	2	0	0	0
10057701	400006038	M1887 PBIC2014	0	1000	86400	2	1	2	0	0	0
10057702	400006038	M1887 PBIC2014	0	1000	604800	2	1	2	0	0	0
10056201	400006039	UTS-15	0	1000	100	1	1	2	0	0	0
10056202	400006039	UTS-15	0	1000	500	1	1	2	0	0	0
10057802	400006040	SPAS-15 NonLogo PBSC2013	0	1000	604800	2	1	2	0	0	0
10057803	400006040	SPAS-15 NonLogo PBSC2013	0	1000	2592000	2	1	2	0	0	0
10057801	400006040	SPAS-15 NonLogo PBSC2013	0	1000	2592000	2	1	2	0	0	0
10057901	400006041	M1887 Lion-Heart	0	1000	86400	2	1	2	0	0	0
10057903	400006041	M1887 Lion-Heart	0	1000	2592000	2	1	2	0	0	0
10057902	400006041	M1887 Lion-Heart	0	1000	604800	2	1	2	0	0	0
10058002	400006042	Zombie Slayer	0	1000	604800	2	1	2	0	0	0
10058001	400006042	Zombie Slayer	0	1000	86400	2	1	2	0	0	0
10058003	400006042	Zombie Slayer	0	1000	2592000	2	1	2	0	0	0
10056002	400006043	Remington ETA	0	1000	500	1	1	2	0	0	0
10056001	400006043	Remington ETA	0	1000	100	1	1	2	0	0	0
10058101	400006044	Remington ETA G.	0	1000	86400	2	1	2	0	0	0
10058102	400006044	Remington ETA G.	0	1000	604800	2	1	2	0	0	0
10058103	400006044	Remington ETA G.	0	1000	2592000	2	1	2	0	0	0
10058203	400006046	UTS-15 D	0	1000	2592000	2	1	2	0	0	0
10058202	400006046	UTS-15 D	0	1000	604800	2	1	2	0	0	0
10058201	400006046	UTS-15 D	0	1000	86400	2	1	2	0	0	0
10056302	400006047	Cerberus	0	1000	500	1	1	2	0	0	0
10056301	400006047	Cerberus	0	1000	100	1	1	2	0	0	0
10058303	400006048	UTS-15 G.	0	1000	2592000	2	1	2	0	0	0
10058302	400006048	UTS-15 G.	0	1000	604800	2	1	2	0	0	0
10058301	400006048	UTS-15 G.	0	1000	86400	2	1	2	0	0	0
10058403	400006049	M1887 GSL2015	0	1000	2592000	2	1	2	0	0	0
10058402	400006049	M1887 GSL2015	0	1000	604800	2	1	2	0	0	0
10058401	400006049	M1887 GSL2015	0	1000	86400	2	1	2	0	0	0
10058502	400006051	WaterGun	0	1000	604800	2	1	2	0	0	0
10058501	400006051	WaterGun	0	1000	86400	2	1	2	0	0	0
10058503	400006051	WaterGun	0	1000	2592000	2	1	2	0	0	0
10058603	400006052	M1887 Summer	0	1000	2592000	2	1	2	0	0	0
10058602	400006052	M1887 Summer	0	1000	604800	2	1	2	0	0	0
10058601	400006052	M1887 Summer	0	1000	86400	2	1	2	1	0	0
10058703	400006053	M1887 PBNC2015	0	1000	2592000	2	1	2	0	0	0
10058701	400006053	M1887 PBNC2015	0	1000	86400	2	1	2	0	0	0
10058702	400006053	M1887 PBNC2015	0	1000	604800	2	1	2	0	0	0
10058801	400006054	SPAS-15 PBNC2015	0	1000	86400	2	1	2	0	0	0
10058802	400006054	SPAS-15 PBNC2015	0	1000	604800	2	1	2	0	0	0
10058803	400006054	SPAS-15 PBNC2015	0	1000	2592000	2	1	2	0	0	0
10058901	400006055	M1887 PBTC2015	0	1000	86400	2	1	2	0	0	0
10058902	400006055	M1887 PBTC2015	0	1000	604800	2	1	2	0	0	0
10058903	400006055	M1887 PBTC2015	0	1000	2592000	2	1	2	0	0	0
10059002	400006056	M1887 Mech	0	1000	604800	2	1	2	0	0	0
10059003	400006056	M1887 Mech	0	1000	2592000	2	1	2	0	0	0
10059001	400006056	M1887 Mech	0	1000	86400	2	1	2	0	0	0
10059102	400006057	SPAS-15 MSC PBNC2015 U.S.	0	1000	604800	2	1	2	0	0	0
10059103	400006057	SPAS-15 MSC PBNC2015 U.S.	0	1000	2592000	2	1	2	0	0	0
10059101	400006057	SPAS-15 MSC PBNC2015 U.S.	0	1000	86400	2	1	2	0	0	0
10059203	400006058	M1887 PBIC2015	0	1000	2592000	2	1	2	0	0	0
10059202	400006058	M1887 PBIC2015	0	1000	604800	2	1	2	0	0	0
10059201	400006058	M1887 PBIC2015	0	1000	86400	2	1	2	0	0	0
10059303	400006059	M1887 Gold	0	1000	2592000	2	1	2	0	0	0
10059301	400006059	M1887 Gold	0	1000	86400	2	1	2	0	0	0
10059302	400006059	M1887 Gold	0	1000	604800	2	1	2	0	0	0
10059401	400006060	M1887 Medical	0	1000	2592000	2	1	2	1	0	0
10059402	400006060	M1887 Medical	0	1000	604800	2	1	2	0	0	0
10059403	400006060	M1887 Medical	0	1000	2592000	2	1	2	0	0	0
10059501	400006061	M1887 Steam	0	1000	86400	2	1	2	0	0	0
10059502	400006061	M1887 Steam	0	1000	604800	2	1	2	0	0	0
10059503	400006061	M1887 Steam	0	1000	2592000	2	1	2	0	0	0
10059603	400006062	M1887 Obsidian	0	1000	2592000	2	1	2	0	0	0
10059601	400006062	M1887 Obsidian	0	1000	86400	2	1	2	0	0	0
10059602	400006062	M1887 Obsidian	0	1000	604800	2	1	2	0	0	0
10059701	400006063	M1887 Arena Normal	0	1000	86400	2	1	2	0	0	0
10059703	400006063	M1887 Arena Normal	0	1000	2592000	2	1	2	0	0	0
10059702	400006063	M1887 Arena Normal	0	1000	604800	2	1	2	0	0	0
10059802	400006064	M1887 Arena Deluxe	0	1000	604800	2	1	2	0	0	0
10059803	400006064	M1887 Arena Deluxe	0	1000	2592000	2	1	2	0	0	0
10059801	400006064	M1887 Arena Deluxe	0	1000	86400	2	1	2	0	0	0
10059901	400006065	M1887 Cupid	0	1000	86400	2	1	2	0	0	0
10059902	400006065	M1887 Cupid	0	1000	604800	2	1	2	0	0	0
10059903	400006065	M1887 Cupid	0	1000	2592000	2	1	2	0	0	0
10060002	400006066	M1887 GRS3	0	1000	604800	2	1	2	0	0	0
10060001	400006066	M1887 GRS3	0	1000	86400	2	1	2	0	0	0
10060003	400006066	M1887 GRS3	0	1000	2592000	2	1	2	0	0	0
10060102	400006067	M1887 Beast	0	1000	604800	2	1	2	0	0	0
10060101	400006067	M1887 Beast	0	1000	86400	2	1	2	0	0	0
10060103	400006067	M1887 Beast	0	1000	2592000	2	1	2	0	0	0
10060201	400006068	M1887 PBGC	0	1000	86400	2	1	2	0	0	0
10060202	400006068	M1887 PBGC	0	1000	604800	2	1	2	0	0	0
10060203	400006068	M1887 PBGC	0	1000	2592000	2	1	2	0	0	0
10060302	400006069	M1887 Skeleton	0	1000	604800	2	1	2	0	0	0
10060301	400006069	M1887 Skeleton	0	1000	86400	2	1	2	0	0	0
10060303	400006069	M1887 Skeleton	0	1000	2592000	2	1	2	0	0	0
10060402	400006070	M1887 Dragon	0	1000	604800	2	1	2	0	0	0
10060401	400006070	M1887 Dragon	0	1000	86400	2	1	2	0	0	0
10060403	400006070	M1887 Dragon	0	1000	2592000	2	1	2	0	0	0
10060501	400006071	M1887 ID 1stAnni	0	1000	86400	2	1	2	0	0	0
10060502	400006071	M1887 ID 1stAnni	0	1000	604800	2	1	2	0	0	0
10060503	400006071	M1887 ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
10060602	400006072	M1887 Dolphin	0	1000	604800	2	1	2	0	0	0
10060603	400006072	M1887 Dolphin	0	1000	2592000	2	1	2	0	0	0
10060601	400006072	M1887 Dolphin	0	1000	86400	2	1	2	0	0	0
10060701	400006073	SPAS-15 Blue Diamond	0	1000	2592000	2	1	2	0	0	0
10060702	400006073	SPAS-15 Blue Diamond	0	1000	604800	2	1	2	0	0	0
10060703	400006073	SPAS-15 Blue Diamond	0	1000	2592000	2	1	2	0	0	0
10060801	400006074	M1887 Lebaran2016	0	1000	86400	2	1	2	0	0	0
10060802	400006074	M1887 Lebaran2016	0	1000	604800	2	1	2	0	0	0
10060803	400006074	M1887 Lebaran2016	0	1000	2592000	2	1	2	0	0	0
10060903	400006075	M1887 Woody	0	1000	2592000	2	1	2	0	0	0
10060901	400006075	M1887 Woody	0	1000	86400	2	1	2	0	0	0
10060902	400006075	M1887 Woody	0	1000	604800	2	1	2	0	0	0
10061001	400006076	M1887 Newborn2016	0	1000	86400	2	1	2	0	0	0
10061002	400006076	M1887 Newborn2016	0	1000	604800	2	1	2	0	0	0
10061003	400006076	M1887 Newborn2016	0	1000	2592000	2	1	2	0	0	0
10061101	400006077	M1887 Liberty	0	1000	86400	2	1	2	0	0	0
10061102	400006077	M1887 Liberty	0	1000	604800	2	1	2	0	0	0
10061103	400006077	M1887 Liberty	0	1000	2592000	2	1	2	0	0	0
10061201	400006078	M1887 PBIC2016	0	1000	86400	2	1	2	0	0	0
10061202	400006078	M1887 PBIC2016	0	1000	604800	2	1	2	0	0	0
10061203	400006078	M1887 PBIC2016	0	1000	2592000	2	1	2	0	0	0
10061301	400006079	M1887 PBTC2016	0	1000	86400	2	1	2	0	0	0
10061302	400006079	M1887 PBTC2016	0	1000	604800	2	1	2	0	0	0
10061303	400006079	M1887 PBTC2016	0	1000	2592000	2	1	2	0	0	0
10061503	400006081	M1887 PBNC2016	0	1000	2592000	2	1	2	0	0	0
10061502	400006081	M1887 PBNC2016	0	1000	604800	2	1	2	0	0	0
10061501	400006081	M1887 PBNC2016	0	1000	86400	2	1	2	0	0	0
10061602	400006082	M1887 SUPREME	0	1000	2592000	2	1	2	0	0	0
10061601	400006082	M1887 SUPREME	0	1000	86400	2	1	2	0	0	0
10061603	400006082	M1887 SUPREME	0	1000	2592000	2	1	2	0	0	0
10061702	400006083	M1887 Gorgeous	0	1000	604800	2	1	2	0	0	0
10061701	400006083	M1887 Gorgeous	0	1000	86400	2	1	2	0	0	0
10061703	400006083	M1887 Gorgeous	0	1000	2592000	2	1	2	0	0	0
10061802	400006084	Cerberus Gorgeous	0	1000	604800	2	1	2	0	0	0
10061803	400006084	Cerberus Gorgeous	0	1000	2592000	2	1	2	0	0	0
10061801	400006084	Cerberus Gorgeous	0	1000	86400	2	1	2	0	0	0
10065103	400006120	CERBERUS FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
10065102	400006120	CERBERUS FIREDRAGON	0	1000	604800	2	1	1	0	0	0
10065101	400006120	CERBERUS FIREDRAGON	0	1000	86400	2	1	1	0	0	0
130076080	400006138	M1887 Pandora	0	1000	2592000	2	1	2	1	0	0
400006139	400006139	M1887 ZEPETTO	0	1000	2592000	2	1	2	1	0	0
130076079	400006142	Zombie Slayer Graduation	0	1000	2592000	2	1	2	1	0	0
10064603	400006144	M1887 DIGITAL	0	1000	2592000	2	1	1	1	0	0
10064602	400006144	M1887 DIGITAL	0	1000	604800	2	1	1	1	0	0
10064601	400006144	M1887 DIGITAL	0	1000	86400	2	1	1	1	0	0
10064102	400006146	SHOTGUN M1887 PBWC2018	0	1000	604800	2	1	1	4	0	0
10064101	400006146	SHOTGUN M1887 PBWC2018	0	1000	86400	2	1	1	4	0	0
10064103	400006146	SHOTGUN M1887 PBWC2018	0	1000	2592000	2	1	1	4	0	0
400006153	400006153	M1887 Surfing	0	1000	2592000	2	1	2	1	0	0
400006154	400006154	Cerberus Shotgun Milkyway	0	1000	2592000	2	1	2	5	0	0
130076078	400006156	M1887 Renegade2	0	1000	2592000	2	1	2	1	0	0
10062802	500010001	Mk 46 Ext.	0	1000	500	1	1	2	0	0	0
10062801	500010001	Mk 46 Ext.	0	1000	100	1	1	2	0	0	0
10062901	500010002	Mk 46 Silver	0	1000	100	1	1	2	0	0	0
10062902	500010002	Mk 46 Silver	0	1000	500	1	1	2	0	0	0
10063001	500010003	RPD	0	1000	100	1	1	2	0	0	0
10063002	500010003	RPD	0	1000	500	1	1	2	0	0	0
10062602	500010004	L86 LSW	0	1000	500	1	1	2	0	0	0
10062601	500010004	L86 LSW	0	1000	100	1	1	2	0	0	0
10063101	500010009	L86 LSW XMAS	0	1000	100	1	1	2	0	0	0
10063102	500010009	L86 LSW XMAS	0	1000	500	1	1	2	0	0	0
10062701	500010011	Ultimax 100	0	1000	100	1	1	2	0	0	0
10062702	500010011	Ultimax 100	0	1000	500	1	1	2	0	0	0
10063201	500010012	Ultimax 100 G.	0	1000	86400	2	1	2	0	0	0
10063203	500010012	Ultimax 100 G.	0	1000	2592000	2	1	2	0	0	0
10063202	500010012	Ultimax 100 G.	0	1000	604800	2	1	2	0	0	0
10063302	500010013	Ultimax 100 Madness	0	1000	604800	2	1	2	0	0	0
10063301	500010013	Ultimax 100 Madness	0	1000	2592000	2	1	2	0	0	0
10063303	500010013	Ultimax 100 Madness	0	1000	2592000	2	1	2	0	0	0
10063402	500010014	Ultimax 100 Mummy	0	1000	604800	2	1	2	0	0	0
10063403	500010014	Ultimax 100 Mummy	0	1000	2592000	2	1	2	0	0	0
10063401	500010014	Ultimax 100 Mummy	0	1000	86400	2	1	2	0	0	0
20002002	601002001	Desert Eagle	0	1000	500	1	1	2	0	0	0
20002001	601002001	Desert Eagle	0	1000	100	1	1	2	0	0	0
20001401	601002002	MK 23 Ext.	0	1000	100	1	1	2	0	0	0
20001402	601002002	MK 23 Ext.	0	1000	500	1	1	2	0	0	0
20000301	601002005	D-Eagle Silver	0	1000	100	1	1	2	0	0	0
20000302	601002005	D-Eagle Silver	0	1000	500	1	1	2	0	0	0
20000901	601002007	C. Python	0	1000	100	1	1	2	0	0	0
20000902	601002007	C. Python	0	1000	500	1	1	2	0	0	0
20001302	601002011	Glock 18	0	1000	500	1	1	2	0	0	0
20001301	601002011	Glock 18	0	1000	100	1	1	2	0	0	0
20007001	601002012	C. Python D	0	1000	86400	2	1	2	0	0	0
20007002	601002012	C. Python D	0	1000	604800	2	1	2	0	0	0
20007003	601002012	C. Python D	0	1000	2592000	2	1	2	0	0	0
20001801	601002013	RB 454 SS2M	0	1000	100	1	1	2	0	0	0
20001802	601002013	RB 454 SS2M	0	1000	500	1	1	2	0	0	0
20000101	601002014	RB 454 SS5M	0	1000	2592000	2	1	2	0	0	0
20000102	601002014	RB 454 SS5M	0	1000	500	1	1	2	0	0	0
20000201	601002015	RB 454 SS8M	0	1000	100	1	1	2	0	0	0
20000202	601002015	RB 454 SS8M	0	1000	500	1	1	2	0	0	0
20007103	601002016	RB 454 SS8M+S	0	1000	2592000	2	1	2	0	0	0
20007102	601002016	RB 454 SS8M+S	0	1000	604800	2	1	2	0	0	0
20007101	601002016	RB 454 SS8M+S	0	1000	86400	2	1	2	0	0	0
20000601	601002017	C. Python G	0	1000	100	1	1	2	0	0	0
20000602	601002017	C. Python G	0	1000	500	1	1	2	0	0	0
20007202	601002018	C. Python G D	0	1000	604800	2	1	2	0	0	0
20007201	601002018	C. Python G D	0	1000	86400	2	1	2	0	0	0
20007203	601002018	C. Python G D	0	1000	2592000	2	1	2	0	0	0
20007302	601002019	Mk 23 Ext. D	0	1000	604800	2	1	2	0	0	0
20007301	601002019	Mk 23 Ext. D	0	1000	86400	2	1	2	0	0	0
20007303	601002019	Mk 23 Ext. D	0	1000	2592000	2	1	2	0	0	0
20007403	601002021	Glock 18 D	0	1000	2592000	2	1	2	0	0	0
20007402	601002021	Glock 18 D	0	1000	604800	2	1	2	0	0	0
20007401	601002021	Glock 18 D	0	1000	86400	2	1	2	0	0	0
20001601	601002022	Colt 45	0	1000	100	1	1	2	0	0	0
20001602	601002022	Colt 45	0	1000	500	1	1	2	0	0	0
20007503	601002023	IMI Uzi 9mm	0	1000	2592000	2	1	2	0	0	0
20007501	601002023	IMI Uzi 9mm	0	1000	86400	2	1	2	0	0	0
20007502	601002023	IMI Uzi 9mm	0	1000	604800	2	1	2	0	0	0
20001901	601002024	Kriss Vector SDP	0	1000	100	1	1	2	0	0	0
20001902	601002024	Kriss Vector SDP	0	1000	500	1	1	2	0	0	0
20007603	601002026	HK69	0	1000	2592000	2	1	2	0	0	0
20007601	601002026	HK69	0	1000	86400	2	1	2	0	0	0
20007602	601002026	HK69	0	1000	604800	2	1	2	0	0	0
20007703	601002027	MK23 SI	0	1000	2592000	2	1	2	0	0	0
20007701	601002027	MK23 SI	0	1000	86400	2	1	2	0	0	0
20007702	601002027	MK23 SI	0	1000	604800	2	1	2	0	0	0
20005103	601002028	M79	0	1000	2592000	2	1	2	0	0	0
20005101	601002028	M79	0	1000	86400	2	1	2	0	0	0
20005102	601002028	M79	0	1000	604800	2	1	2	0	0	0
20007803	601002029	GL-06	0	1000	2592000	2	1	2	0	0	0
20007802	601002029	GL-06	0	1000	604800	2	1	2	0	0	0
20007801	601002029	GL-06	0	1000	86400	2	1	2	0	0	0
20007902	601002034	R.B 454 SS8M+S PBSC2013	0	1000	604800	2	1	2	0	0	0
20007901	601002034	R.B 454 SS8M+S PBSC2013	0	1000	86400	2	1	2	0	0	0
20007903	601002034	R.B 454 SS8M+S PBSC2013	0	1000	2592000	2	1	2	0	0	0
20008003	601002035	MK.23 Reload	0	1000	2592000	2	1	2	0	0	0
20008002	601002035	MK.23 Reload	0	1000	604800	2	1	2	0	0	0
20008001	601002035	MK.23 Reload	0	1000	86400	2	1	2	0	0	0
20008101	601002036	Desert Eagle Reload	0	1000	86400	2	1	2	0	0	0
20008102	601002036	Desert Eagle Reload	0	1000	604800	2	1	2	0	0	0
20008103	601002036	Desert Eagle Reload	0	1000	2592000	2	1	2	0	0	0
20008202	601002039	Glock 18 Azerbaijan	0	1000	2592000	2	1	2	0	0	0
20008203	601002039	Glock 18 Azerbaijan	0	1000	2592000	2	1	2	0	0	0
20008201	601002039	Glock 18 Azerbaijan	0	1000	86400	2	1	2	0	0	0
20008303	601002040	C. Python PBNC5	0	1000	2592000	2	1	2	0	0	0
20008301	601002040	C. Python PBNC5	0	1000	86400	2	1	2	0	0	0
20008302	601002040	C. Python PBNC5	0	1000	604800	2	1	2	0	0	0
20008401	601002047	Glock 18 BR Camo	0	1000	86400	2	1	2	0	0	0
20008402	601002047	Glock 18 BR Camo	0	1000	604800	2	1	2	0	0	0
20008403	601002047	Glock 18 BR Camo	0	1000	2592000	2	1	2	0	0	0
20008503	601002049	C. Python Brazuca	0	1000	2592000	2	1	2	0	0	0
20008501	601002049	C. Python Brazuca	0	1000	86400	2	1	2	0	0	0
20008502	601002049	C. Python Brazuca	0	1000	604800	2	1	2	0	0	0
20008602	601002050	R.B 454 SS8M NonLogo PBSC2013	0	1000	604800	2	1	2	0	0	0
20008601	601002050	R.B 454 SS8M NonLogo PBSC2013	0	1000	86400	2	1	2	0	0	0
20008603	601002050	R.B 454 SS8M NonLogo PBSC2013	0	1000	2592000	2	1	2	0	0	0
20008703	601002052	C. Python Toy	0	1000	2592000	2	1	2	0	0	0
20008702	601002052	C. Python Toy	0	1000	604800	2	1	2	0	0	0
20008701	601002052	C. Python Toy	0	1000	86400	2	1	2	0	0	0
20008802	601002054	GL-06 ANC 2015	0	1000	604800	2	1	2	0	0	0
20008803	601002054	GL-06 ANC 2015	0	1000	2592000	2	1	2	0	0	0
20008801	601002054	GL-06 ANC 2015	0	1000	86400	2	1	2	0	0	0
20002102	601002057	D-Eagle Ongame	0	1000	604800	2	1	2	0	0	0
20002103	601002057	D-Eagle Ongame	0	1000	2592000	2	1	2	0	0	0
20002101	601002057	D-Eagle Ongame	0	1000	86400	2	1	2	0	0	0
20002202	601002058	C. Python Summer	0	1000	604800	2	1	2	1	0	0
20002203	601002058	C. Python Summer	0	1000	2592000	2	1	2	1	0	0
20002201	601002058	C. Python Summer	0	1000	86400	2	1	2	1	0	0
20002303	601002059	C. Python Rose	0	1000	2592000	2	1	2	0	0	0
20002302	601002059	C. Python Rose	0	1000	2592000	2	1	2	0	0	0
20002301	601002059	C. Python Rose	0	1000	86400	2	1	2	0	0	0
20002403	601002060	C. Python Brazil	0	1000	2592000	2	1	2	0	0	0
20002401	601002060	C. Python Brazil	0	1000	86400	2	1	2	0	0	0
20002402	601002060	C. Python Brazil	0	1000	604800	2	1	2	0	0	0
20002502	601002061	Glock 18 PBST2015	0	1000	604800	2	1	2	0	0	0
20002503	601002061	Glock 18 PBST2015	0	1000	2592000	2	1	2	0	0	0
20002501	601002061	Glock 18 PBST2015	0	1000	86400	2	1	2	0	0	0
20002603	601002062	Glock 18 4Game	0	1000	2592000	2	1	2	0	0	0
20002602	601002062	Glock 18 4Game	0	1000	604800	2	1	2	0	0	0
20002601	601002062	Glock 18 4Game	0	1000	86400	2	1	2	0	0	0
20002703	601002063	Glock 18 4Game SE	0	1000	2592000	2	1	2	0	0	0
20002702	601002063	Glock 18 4Game SE	0	1000	604800	2	1	2	0	0	0
20002701	601002063	Glock 18 4Game SE	0	1000	86400	2	1	2	0	0	0
20002803	601002064	D-Eagle Lebaran2015	0	1000	2592000	2	1	2	0	0	0
20002802	601002064	D-Eagle Lebaran2015	0	1000	604800	2	1	2	0	0	0
20002801	601002064	D-Eagle Lebaran2015	0	1000	86400	2	1	2	0	0	0
20002902	601002067	C. Python PBNC2015	0	1000	604800	2	1	2	0	0	0
20002901	601002067	C. Python PBNC2015	0	1000	86400	2	1	2	0	0	0
20002903	601002067	C. Python PBNC2015	0	1000	2592000	2	1	2	0	0	0
20003002	601002068	R.B Mech	0	1000	604800	2	1	2	0	0	0
20003003	601002068	R.B Mech	0	1000	2592000	2	1	2	0	0	0
20003001	601002068	R.B Mech	0	1000	86400	2	1	2	0	0	0
20003102	601002069	Kriss Vector SDP DarkDays	0	1000	604800	2	1	2	0	0	0
20003103	601002069	Kriss Vector SDP DarkDays	0	1000	2592000	2	1	2	0	0	0
20003101	601002069	Kriss Vector SDP DarkDays	0	1000	86400	2	1	2	0	0	0
20003203	601002070	R.B 454 SS8M+S PBIC2015	0	1000	2592000	2	1	2	1	0	0
20003202	601002070	R.B 454 SS8M+S PBIC2015	0	1000	2592000	2	1	2	1	0	0
20003201	601002070	R.B 454 SS8M+S PBIC2015	0	1000	86400	2	1	2	1	0	0
20003303	601002071	Glock 18 G.	0	1000	2592000	2	1	2	0	0	0
20003302	601002071	Glock 18 G.	0	1000	604800	2	1	2	0	0	0
20003301	601002071	Glock 18 G.	0	1000	86400	2	1	2	0	0	0
20003401	601002072	C. Python VeraCruz	0	1000	86400	2	1	2	0	0	0
20003403	601002072	C. Python VeraCruz	0	1000	2592000	2	1	2	0	0	0
20003402	601002072	C. Python VeraCruz	0	1000	604800	2	1	2	0	0	0
20003503	601002073	R.B 454 SS8M+S Cobra	0	1000	2592000	2	1	2	0	0	0
20003502	601002073	R.B 454 SS8M+S Cobra	0	1000	604800	2	1	2	0	0	0
20003501	601002073	R.B 454 SS8M+S Cobra	0	1000	86400	2	1	2	0	0	0
20003601	601002074	Kriss Vector SDP Camo Soldier	0	1000	86400	2	1	2	0	0	0
20003602	601002074	Kriss Vector SDP Camo Soldier	0	1000	604800	2	1	2	0	0	0
20003603	601002074	Kriss Vector SDP Camo Soldier	0	1000	2592000	2	1	2	0	0	0
20003703	601002075	MK.23 SPY	0	1000	2592000	2	1	2	0	0	0
20003701	601002075	MK.23 SPY	0	1000	86400	2	1	2	0	0	0
20003702	601002075	MK.23 SPY	0	1000	604800	2	1	2	0	0	0
20003803	601002076	C. Python Latin5	0	1000	2592000	2	1	2	0	0	0
20003801	601002076	C. Python Latin5	0	1000	86400	2	1	2	0	0	0
20003802	601002076	C. Python Latin5	0	1000	604800	2	1	2	0	0	0
20003903	601002077	MK.23 Spy-Deluxe	0	1000	2592000	2	1	2	0	0	0
20003902	601002077	MK.23 Spy-Deluxe	0	1000	604800	2	1	2	0	0	0
20003901	601002077	MK.23 Spy-Deluxe	0	1000	86400	2	1	2	0	0	0
20004002	601002079	C. Python Arena Normal	0	1000	604800	2	1	2	0	0	0
20004001	601002079	C. Python Arena Normal	0	1000	86400	2	1	2	0	0	0
20004003	601002079	C. Python Arena Normal	0	1000	2592000	2	1	2	0	0	0
20004101	601002080	C. Python Arena Deluxe	0	1000	86400	2	1	2	0	0	0
20004102	601002080	C. Python Arena Deluxe	0	1000	2592000	2	1	2	0	0	0
20004103	601002080	C. Python Arena Deluxe	0	1000	2592000	2	1	2	0	0	0
20004202	601002081	R.B 454 SS8M+S Vera Cruz 2016	0	1000	604800	2	1	2	0	0	0
20004203	601002081	R.B 454 SS8M+S Vera Cruz 2016	0	1000	2592000	2	1	2	0	0	0
20004201	601002081	R.B 454 SS8M+S Vera Cruz 2016	0	1000	86400	2	1	2	0	0	0
20004301	601002082	C. Python Sakura	0	1000	86400	2	1	2	0	0	0
20004302	601002082	C. Python Sakura	0	1000	604800	2	1	2	0	0	0
20004303	601002082	C. Python Sakura	0	1000	2592000	2	1	2	0	0	0
20004402	601002083	C. Python Beast	0	1000	604800	2	1	2	0	0	0
20004403	601002083	C. Python Beast	0	1000	2592000	2	1	2	0	0	0
20004401	601002083	C. Python Beast	0	1000	86400	2	1	2	0	0	0
20004502	601002084	C. Python GSL2016	0	1000	604800	2	1	2	0	0	0
20004501	601002084	C. Python GSL2016	0	1000	86400	2	1	2	0	0	0
20004503	601002084	C. Python GSL2016	0	1000	2592000	2	1	2	0	0	0
20004603	601002085	Desert Eagle Tiger-Normal	0	1000	2592000	2	1	2	0	0	0
20004601	601002085	Desert Eagle Tiger-Normal	0	1000	86400	2	1	2	0	0	0
20004602	601002085	Desert Eagle Tiger-Normal	0	1000	604800	2	1	2	0	0	0
20004701	601002086	Desert Eagle Tiger-Deluxe	0	1000	86400	2	1	2	0	0	0
20004703	601002086	Desert Eagle Tiger-Deluxe	0	1000	2592000	2	1	2	0	0	0
20004702	601002086	Desert Eagle Tiger-Deluxe	0	1000	604800	2	1	2	0	0	0
20004803	601002087	C. Python PBWC2016	0	1000	2592000	2	1	2	0	0	0
20004801	601002087	C. Python PBWC2016	0	1000	86400	2	1	2	0	0	0
20004802	601002087	C. Python PBWC2016	0	1000	604800	2	1	2	0	0	0
20004902	601002088	Glock 18 Mummy	0	1000	2592000	2	1	2	0	0	0
20004901	601002088	Glock 18 Mummy	0	1000	86400	2	1	2	0	0	0
20004903	601002088	Glock 18 Mummy	0	1000	2592000	2	1	2	0	0	0
20005003	601002089	MK.23 Blue Diamond	0	1000	2592000	2	1	2	0	0	0
20005002	601002089	MK.23 Blue Diamond	0	1000	604800	2	1	2	0	0	0
20005001	601002089	MK.23 Blue Diamond	0	1000	86400	2	1	2	0	0	0
20005203	601002091	MK.23 Alien	0	1000	2592000	2	1	2	0	0	0
20005202	601002091	MK.23 Alien	0	1000	604800	2	1	2	0	0	0
20005201	601002091	MK.23 Alien	0	1000	86400	2	1	2	0	0	0
20005303	601002092	C. Python Newborn2016	0	1000	2592000	2	1	2	0	0	0
20005301	601002092	C. Python Newborn2016	0	1000	86400	2	1	2	0	0	0
20005302	601002092	C. Python Newborn2016	0	1000	604800	2	1	2	0	0	0
20005403	601002093	Kriss Vector SDP Puzzle	0	1000	2592000	2	1	2	0	0	0
20005401	601002093	Kriss Vector SDP Puzzle	0	1000	2592000	2	1	2	0	0	0
20005402	601002093	Kriss Vector SDP Puzzle	0	1000	604800	2	1	2	0	0	0
20001501	601002094	U22 Neos	0	1000	100	1	1	2	0	0	0
20001502	601002094	U22 Neos	0	1000	500	1	1	2	0	0	0
20005501	601002095	U22 Neos S.	0	1000	86400	2	1	2	0	0	0
20005502	601002095	U22 Neos S.	0	1000	604800	2	1	2	0	0	0
20005503	601002095	U22 Neos S.	0	1000	2592000	2	1	2	0	0	0
20005603	601002096	U22 Neos G.	0	1000	2592000	2	1	2	0	0	0
20005602	601002096	U22 Neos G.	0	1000	604800	2	1	2	0	0	0
20005601	601002096	U22 Neos G.	0	1000	86400	2	1	2	0	0	0
20005703	601002097	C. Python PBIC2016	0	1000	2592000	2	1	2	0	0	0
20005701	601002097	C. Python PBIC2016	0	1000	86400	2	1	2	0	0	0
20005702	601002097	C. Python PBIC2016	0	1000	604800	2	1	2	0	0	0
20005903	601002099	R.B 454 SS8M+S PBIC2016	0	1000	2592000	2	1	2	0	0	0
20005901	601002099	R.B 454 SS8M+S PBIC2016	0	1000	86400	2	1	2	0	0	0
20005902	601002099	R.B 454 SS8M+S PBIC2016	0	1000	604800	2	1	2	0	0	0
20006002	601002100	C. Python SUPREME	0	1000	604800	2	1	2	0	0	0
20006003	601002100	C. Python SUPREME	0	1000	2592000	2	1	2	0	0	0
20006001	601002100	C. Python SUPREME	0	1000	86400	2	1	2	0	0	0
20009001	601002134	COLTPYTHON FIREDRAGON	0	1000	86400	2	1	1	0	0	0
20009003	601002134	COLTPYTHON FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
20009002	601002134	COLTPYTHON FIREDRAGON	0	1000	2592000	2	1	2	0	0	0
601002140	601002140	C.Python ZEPETTO	0	1000	2592000	2	1	2	1	0	0
20008901	601002148	COLTPYTHON PBWC2018	0	1000	86400	2	1	1	4	0	0
20008903	601002148	COLTPYTHON PBWC2018	0	1000	2592000	2	1	1	4	0	0
20008902	601002148	COLTPYTHON PBWC2018	0	1000	604800	2	1	1	4	0	0
601002153	601002153	R.B 454 SS8M+S Milkyway	0	1000	2592000	2	1	2	5	0	0
20000401	601013001	P99&HAK	0	1000	100	1	1	2	0	30	0
20000402	601013001	P99&HAK	0	1000	500	1	1	2	0	30	0
20000502	601013007	P99&HAK Reload	0	1000	500	2	1	2	0	0	0
20000501	601013007	P99&HAK Reload	0	1000	100	2	1	2	0	0	0
20006101	601013008	C. Python Cutlass	0	1000	86400	2	1	2	0	0	0
20006103	601013008	C. Python Cutlass	0	1000	2592000	2	1	2	0	0	0
20006102	601013008	C. Python Cutlass	0	1000	604800	2	1	2	0	0	0
20000701	601014001	Dual Handgun	0	1000	2592000	2	1	2	0	32	0
20000702	601014001	Dual Handgun	0	1000	500	1	1	2	0	32	0
20000802	601014002	Dual D-Eagle	0	1000	500	1	1	2	0	32	0
20000801	601014002	Dual D-Eagle	0	1000	100	1	1	2	0	32	0
20006201	601014004	Dual D-Eagle G.	0	1000	86400	2	1	2	0	0	0
20006203	601014004	Dual D-Eagle G.	0	1000	2592000	2	1	2	0	0	0
20006202	601014004	Dual D-Eagle G.	0	1000	604800	2	1	2	0	0	0
20001001	601014006	Dual D-Eagle D	0	1000	100	1	1	2	0	0	0
20001002	601014006	Dual D-Eagle D	0	1000	500	1	1	2	0	0	0
20001101	601014007	Dual HK45	0	1000	100	1	1	2	0	0	0
20001102	601014007	Dual HK45	0	1000	500	1	1	2	0	0	0
20001201	601014008	Dual Handgun	0	1000	100	1	1	2	0	0	0
20001202	601014008	Dual Handgun	0	1000	500	1	1	2	0	0	0
20006301	601014011	Dual D-Eagle GRS	0	1000	86400	2	1	2	0	0	0
20006303	601014011	Dual D-Eagle GRS	0	1000	2592000	2	1	2	0	0	0
20006302	601014011	Dual D-Eagle GRS	0	1000	604800	2	1	2	0	0	0
20006401	601014012	Dual HK45 Halloween	0	1000	86400	2	1	2	0	0	0
20006402	601014012	Dual HK45 Halloween	0	1000	604800	2	1	2	0	0	0
20006403	601014012	Dual HK45 Halloween	0	1000	2592000	2	1	2	0	0	0
20006502	601014015	Dual D-Eagle BR Camo	0	1000	604800	2	1	2	0	0	0
20006501	601014015	Dual D-Eagle BR Camo	0	1000	86400	2	1	2	0	0	0
20006503	601014015	Dual D-Eagle BR Camo	0	1000	2592000	2	1	2	0	0	0
20006601	601014016	Dual D-Eagle G E-Sport	0	1000	86400	2	1	2	0	0	0
20006603	601014016	Dual D-Eagle G E-Sport	0	1000	2592000	2	1	2	0	0	0
20006602	601014016	Dual D-Eagle G E-Sport	0	1000	604800	2	1	2	0	0	0
20001701	601014017	Scorpion Vz.61	0	1000	2592000	2	1	2	0	0	0
20001702	601014017	Scorpion Vz.61	0	1000	500	1	1	2	0	0	0
20006702	601014018	Scorpion Vz.61 G.	0	1000	604800	2	1	2	0	0	0
1025	601002114	Tec-9G	0	1000	2592000	2	1	2	0	0	0
110072630	601002104	Luger p08 Gold	0	1000	2592000	2	1	2	0	0	0
20006703	601014018	Scorpion Vz.61 G.	0	1000	2592000	2	1	2	0	0	0
20006701	601014018	Scorpion Vz.61 G.	0	1000	86400	2	1	2	0	0	0
20006802	601014019	Dual D-Eagle Lebaran2016	0	1000	604800	2	1	2	0	0	0
20006801	601014019	Dual D-Eagle Lebaran2016	0	1000	2592000	2	1	2	0	0	0
20006803	601014019	Dual D-Eagle Lebaran2016	0	1000	2592000	2	1	2	0	0	0
20006901	601014020	Scorpion Vz.61 Woody	0	1000	86400	2	1	2	0	0	0
20006903	601014020	Scorpion Vz.61 Woody	0	1000	2592000	2	1	2	0	0	0
20006902	601014020	Scorpion Vz.61 Woody	0	1000	604800	2	1	2	0	0	0
601014027	601014027	Dual D-Eagle Nevasca	0	1000	2592000	2	1	2	5	0	0
601034001	601034001	Commpound Bow	0	1000	2592000	2	1	2	5	0	0
601034002	601034002	Commpound Bow Silver	0	1000	2592000	2	1	2	5	0	0
601034003	601034003	Commpound Bow Gold	0	1000	2592000	2	1	2	5	0	0
20009101	601034003	BOW GOLD	0	1000	86400	2	1	1	1	0	0
20009103	601034003	BOW GOLD	0	1000	2592000	2	1	1	1	0	0
20009102	601034003	BOW GOLD	0	1000	604800	2	1	1	1	0	0
601034004	601034004	Commpound Bow Blue	0	1000	2592000	2	1	2	5	0	0
20009203	601034005	BOW BLACK	0	1000	2592000	2	1	1	1	0	1
601034005	601034005	Commpound Bow Black	0	1000	2592000	2	1	2	5	0	0
20009202	601034005	BOW BLACK	0	1000	604800	2	1	1	1	0	1
20009201	601034005	BOW BLACK	0	1000	86400	2	1	1	1	0	1
30000701	702001004	Amok Kukri	0	1000	100	1	1	2	0	28	0
30000702	702001004	Amok Kukri	0	1000	500	1	1	2	0	28	0
30000202	702001007	Mini Axe	0	1000	500	1	1	2	0	0	0
30000201	702001007	Mini Axe	0	1000	100	1	1	2	0	0	0
30010101	702001009	M-7 Gold	0	1000	86400	2	1	2	0	0	0
30010103	702001009	M-7 Gold	0	1000	2592000	2	1	2	0	0	0
30010102	702001009	M-7 Gold	0	1000	604800	2	1	2	0	0	0
30010202	702001011	Amok Kukri D	0	1000	604800	2	1	2	0	0	0
30010201	702001011	Amok Kukri D	0	1000	86400	2	1	2	0	0	0
30010203	702001011	Amok Kukri D	0	1000	2592000	2	1	2	0	0	0
30000902	702001012	Mini Axe D	0	1000	604800	2	1	2	0	0	0
30000903	702001012	Mini Axe D	0	1000	2592000	2	1	2	0	0	0
30000901	702001012	Mini Axe D	0	1000	86400	2	1	2	0	0	0
30001002	702001014	Machete de Combate	0	1000	2592000	2	1	2	0	0	0
30001003	702001014	Machete de Combate	0	1000	2592000	2	1	2	0	0	0
30001001	702001014	Machete de Combate	0	1000	86400	2	1	2	0	0	0
30000402	702001017	Fang Blade	0	1000	500	1	1	2	0	0	0
30000401	702001017	Fang Blade	0	1000	100	1	1	2	0	0	0
30001102	702001018	Ballistic Knife	0	1000	604800	2	1	2	0	0	0
30001101	702001018	Ballistic Knife	0	1000	86400	2	1	2	0	0	0
30001103	702001018	Ballistic Knife	0	1000	2592000	2	1	2	0	0	0
30000801	702001021	Keris	0	1000	100	1	1	2	0	0	0
30000802	702001021	Keris	0	1000	500	1	1	2	0	0	0
30001201	702001023	Keris S.	0	1000	86400	2	1	2	0	0	0
30001203	702001023	Keris S.	0	1000	2592000	2	1	2	0	0	0
30001202	702001023	Keris S.	0	1000	604800	2	1	2	0	0	0
30000301	702001024	Alcaçuz	0	1000	100	1	1	2	0	0	0
30000302	702001024	Alcaçuz	0	1000	500	1	1	2	0	0	0
30001303	702001025	Field Shovel	0	1000	2592000	2	1	2	0	0	0
30001302	702001025	Field Shovel	0	1000	2592000	2	1	2	0	0	0
30001301	702001025	Field Shovel	0	1000	86400	2	1	2	0	0	0
30001402	702001041	Espada Árabe	0	1000	604800	2	1	2	0	0	0
30001401	702001041	Espada Árabe	0	1000	86400	2	1	2	0	0	0
30001403	702001041	Espada Árabe	0	1000	2592000	2	1	2	0	0	0
30001501	702001043	Machete de Combate Gold	0	1000	86400	2	1	2	0	0	0
30001502	702001043	Machete de Combate Gold	0	1000	2592000	2	1	2	0	0	0
30001503	702001043	Machete de Combate Gold	0	1000	2592000	2	1	2	0	0	0
30001602	702001044	Machete de Combate PBSC2013	0	1000	604800	2	1	2	0	0	0
30001601	702001044	Machete de Combate PBSC2013	0	1000	86400	2	1	2	0	0	0
30001603	702001044	Machete de Combate PBSC2013	0	1000	2592000	2	1	2	0	0	0
30001702	702001046	Amok Kukri Turkey	0	1000	604800	2	1	2	0	0	0
30001701	702001046	Amok Kukri Turkey	0	1000	86400	2	1	2	0	0	0
30001703	702001046	Amok Kukri Turkey	0	1000	2592000	2	1	2	0	0	0
30001803	702001047	Keris XMAS	0	1000	2592000	2	1	2	0	0	0
30001802	702001047	Keris XMAS	0	1000	604800	2	1	2	0	0	0
30001801	702001047	Keris XMAS	0	1000	86400	2	1	2	0	0	0
30001901	702001049	Espada Árabe E-Sport	0	1000	86400	2	1	2	0	0	0
30001902	702001049	Espada Árabe E-Sport	0	1000	604800	2	1	2	0	0	0
30001903	702001049	Espada Árabe E-Sport	0	1000	2592000	2	1	2	0	0	0
30002001	702001050	Fang Blade PBNC5	0	1000	86400	2	1	2	0	0	0
30002003	702001050	Fang Blade PBNC5	0	1000	2592000	2	1	2	0	0	0
30002002	702001050	Fang Blade PBNC5	0	1000	604800	2	1	2	0	0	0
30002103	702001051	Fang Blade GSL2014	0	1000	2592000	2	1	2	0	0	0
30002101	702001051	Fang Blade GSL2014	0	1000	86400	2	1	2	0	0	0
30002102	702001051	Fang Blade GSL2014	0	1000	604800	2	1	2	0	0	0
30002203	702001052	Fang Blade Brazuca	0	1000	2592000	2	1	2	0	0	0
30002201	702001052	Fang Blade Brazuca	0	1000	86400	2	1	2	0	0	0
30002202	702001052	Fang Blade Brazuca	0	1000	604800	2	1	2	0	0	0
30002302	702001057	Fang Blade Inferno	0	1000	604800	2	1	2	0	0	0
30002301	702001057	Fang Blade Inferno	0	1000	86400	2	1	2	0	0	0
30002303	702001057	Fang Blade Inferno	0	1000	2592000	2	1	2	0	0	0
30002402	702001058	Chinese Cleaver	0	1000	604800	2	1	2	0	0	0
30002403	702001058	Chinese Cleaver	0	1000	2592000	2	1	2	0	0	0
30002401	702001058	Chinese Cleaver	0	1000	2592000	2	1	2	0	0	0
30002502	702001059	Machete de Combate White	0	1000	604800	2	1	2	0	0	0
30002503	702001059	Machete de Combate White	0	1000	2592000	2	1	2	0	0	0
30002501	702001059	Machete de Combate White	0	1000	86400	2	1	2	0	0	0
30002603	702001064	Badminton Racket	0	1000	2592000	2	1	2	0	0	0
30002601	702001064	Badminton Racket	0	1000	86400	2	1	2	0	0	0
30002602	702001064	Badminton Racket	0	1000	604800	2	1	2	0	0	0
30002701	702001065	Keris G E-Sport	0	1000	86400	2	1	2	0	0	0
30002702	702001065	Keris G E-Sport	0	1000	604800	2	1	2	0	0	0
30002703	702001065	Keris G E-Sport	0	1000	2592000	2	1	2	0	0	0
30002803	702001066	Death Scythe	0	1000	2592000	2	1	2	0	0	0
30002801	702001066	Death Scythe	0	1000	86400	2	1	2	0	0	0
30002802	702001066	Death Scythe	0	1000	604800	2	1	2	0	0	0
30002902	702001067	Fang Blade LATIN4	0	1000	2592000	2	1	2	0	0	0
30002903	702001067	Fang Blade LATIN4	0	1000	2592000	2	1	2	0	0	0
30002901	702001067	Fang Blade LATIN4	0	1000	86400	2	1	2	0	0	0
30003001	702001069	Ice Fork	0	1000	86400	2	1	2	0	0	0
30003002	702001069	Ice Fork	0	1000	604800	2	1	2	0	0	0
30003003	702001069	Ice Fork	0	1000	2592000	2	1	2	0	0	0
30003103	702001070	Machete de Combate Cangaceiro	0	1000	2592000	2	1	2	0	0	0
30003101	702001070	Machete de Combate Cangaceiro	0	1000	86400	2	1	2	0	0	0
30003102	702001070	Machete de Combate Cangaceiro	0	1000	604800	2	1	2	0	0	0
30003201	702001071	Goat Hammer	0	1000	86400	2	1	2	0	0	0
30003202	702001071	Goat Hammer	0	1000	604800	2	1	2	0	0	0
30003203	702001071	Goat Hammer	0	1000	2592000	2	1	2	0	0	0
30003303	702001073	Cutelo ANC 2015	0	1000	2592000	2	1	2	0	0	0
30003301	702001073	Cutelo ANC 2015	0	1000	86400	2	1	2	0	0	0
30003302	702001073	Cutelo ANC 2015	0	1000	604800	2	1	2	0	0	0
30003403	702001077	Fang Blade Newborn 2015	0	1000	2592000	2	1	2	0	0	0
30003402	702001077	Fang Blade Newborn 2015	0	1000	604800	2	1	2	0	0	0
30003401	702001077	Fang Blade Newborn 2015	0	1000	86400	2	1	2	0	0	0
30003502	702001079	Fang Blade Ongame	0	1000	604800	2	1	2	0	0	0
30003501	702001079	Fang Blade Ongame	0	1000	86400	2	1	2	0	0	0
30003503	702001079	Fang Blade Ongame	0	1000	2592000	2	1	2	0	0	0
30003601	702001080	Field Shovel Royal	0	1000	86400	2	1	2	0	0	0
30003602	702001080	Field Shovel Royal	0	1000	604800	2	1	2	0	0	0
30003603	702001080	Field Shovel Royal	0	1000	2592000	2	1	2	0	0	0
30003703	702001082	Espada Árabe Midnight	0	1000	2592000	2	1	2	0	0	0
30003702	702001082	Espada Árabe Midnight	0	1000	604800	2	1	2	0	0	0
30003701	702001082	Espada Árabe Midnight	0	1000	86400	2	1	2	0	0	0
30003802	702001083	Nunchaku	0	1000	604800	2	1	2	0	0	0
30003803	702001083	Nunchaku	0	1000	2592000	2	1	2	0	0	0
30003801	702001083	Nunchaku	0	1000	86400	2	1	2	0	0	0
30003901	702001084	Machete de Combate Rose	0	1000	2592000	2	1	2	0	0	0
30003902	702001084	Machete de Combate Rose	0	1000	604800	2	1	2	0	0	0
30003903	702001084	Machete de Combate Rose	0	1000	2592000	2	1	2	0	0	0
30004002	702001093	Machete de Combate Brazil	0	1000	604800	2	1	2	0	0	0
30004001	702001093	Machete de Combate Brazil	0	1000	86400	2	1	2	0	0	0
30004003	702001093	Machete de Combate Brazil	0	1000	2592000	2	1	2	0	0	0
30004103	702001094	Fang Blade PBST2015	0	1000	2592000	2	1	2	0	0	0
30004101	702001094	Fang Blade PBST2015	0	1000	86400	2	1	2	0	0	0
30004102	702001094	Fang Blade PBST2015	0	1000	604800	2	1	2	0	0	0
30004203	702001095	Machete de Combate 4Game	0	1000	2592000	2	1	2	0	0	0
30004202	702001095	Machete de Combate 4Game	0	1000	604800	2	1	2	0	0	0
30004201	702001095	Machete de Combate 4Game	0	1000	86400	2	1	2	0	0	0
30004301	702001096	Machete de Combate 4Game SE	0	1000	86400	2	1	2	0	0	0
30004302	702001096	Machete de Combate 4Game SE	0	1000	604800	2	1	2	0	0	0
30004303	702001096	Machete de Combate 4Game SE	0	1000	2592000	2	1	2	0	0	0
30004403	702001097	Hair Dryer Indonesia	0	1000	2592000	2	1	2	0	0	0
30004402	702001097	Hair Dryer Indonesia	0	1000	604800	2	1	2	0	0	0
30004401	702001097	Hair Dryer Indonesia	0	1000	86400	2	1	2	0	0	0
30004503	702001098	Hair Dryer	0	1000	2592000	2	1	2	0	0	0
30004502	702001098	Hair Dryer	0	1000	604800	2	1	2	0	0	0
30004501	702001098	Hair Dryer	0	1000	86400	2	1	2	0	0	0
30004603	702001101	Fang Blade PBNC2015	0	1000	2592000	2	1	2	0	0	0
30004602	702001101	Fang Blade PBNC2015	0	1000	604800	2	1	2	0	0	0
30004601	702001101	Fang Blade PBNC2015	0	1000	86400	2	1	2	0	0	0
30004701	702001103	Bambu Afiado Bamboo-Runcing	0	1000	86400	2	1	2	0	0	0
30004702	702001103	Bambu Afiado Bamboo-Runcing	0	1000	604800	2	1	2	0	0	0
30004703	702001103	Bambu Afiado Bamboo-Runcing	0	1000	2592000	2	1	2	0	0	0
30004801	702001104	Keris PBIC2015	0	1000	86400	2	1	2	0	0	0
30004802	702001104	Keris PBIC2015	0	1000	604800	2	1	2	0	0	0
30004803	702001104	Keris PBIC2015	0	1000	2592000	2	1	2	0	0	0
30004901	702001106	Machete de Combate VeraCruz	0	1000	86400	2	1	2	0	0	0
30004902	702001106	Machete de Combate VeraCruz	0	1000	604800	2	1	2	0	0	0
30004903	702001106	Machete de Combate VeraCruz	0	1000	2592000	2	1	2	0	0	0
30005001	702001108	Fang Blade Cobra	0	1000	86400	2	1	2	0	0	0
30005002	702001108	Fang Blade Cobra	0	1000	604800	2	1	2	0	0	0
30005003	702001108	Fang Blade Cobra	0	1000	2592000	2	1	2	0	0	0
30005102	702001110	Ballistic Knife Spy	0	1000	604800	2	1	2	0	0	0
30005103	702001110	Ballistic Knife Spy	0	1000	2592000	2	1	2	0	0	0
30005101	702001110	Ballistic Knife Spy	0	1000	86400	2	1	2	0	0	0
30005201	702001113	Fang Blade Latin5	0	1000	86400	2	1	2	0	0	0
30005202	702001113	Fang Blade Latin5	0	1000	604800	2	1	2	0	0	0
30005203	702001113	Fang Blade Latin5	0	1000	2592000	2	1	2	0	0	0
30005301	702001114	Ballistic Knife Spy-Deluxe	0	1000	86400	2	1	2	0	0	0
30005302	702001114	Ballistic Knife Spy-Deluxe	0	1000	604800	2	1	2	0	0	0
30005303	702001114	Ballistic Knife Spy-Deluxe	0	1000	2592000	2	1	2	0	0	0
30005401	702001119	Machete de Combate DFN	0	1000	86400	2	1	2	0	0	0
30005402	702001119	Machete de Combate DFN	0	1000	2592000	2	1	2	0	0	0
30005403	702001119	Machete de Combate DFN	0	1000	2592000	2	1	2	0	0	0
30005502	702001120	Monkey Hammer	0	1000	604800	2	1	2	0	0	0
30005503	702001120	Monkey Hammer	0	1000	2592000	2	1	2	0	0	0
30005501	702001120	Monkey Hammer	0	1000	86400	2	1	2	0	0	0
30009402	702001122	Butterfly Knife	0	1000	604800	2	1	2	0	0	0
30009401	702001122	Butterfly Knife	0	1000	86400	2	1	2	0	0	0
30009403	702001122	Butterfly Knife	0	1000	2592000	2	1	2	0	0	0
30009603	702001123	Fang Blade Arena Normal	0	1000	2592000	2	1	2	0	0	0
30009601	702001123	Fang Blade Arena Normal	0	1000	86400	2	1	2	0	0	0
30009602	702001123	Fang Blade Arena Normal	0	1000	604800	2	1	2	0	0	0
30009702	702001124	Fang Blade Arena Deluxe	0	1000	604800	2	1	2	0	0	0
30009701	702001124	Fang Blade Arena Deluxe	0	1000	86400	2	1	2	0	0	0
30009703	702001124	Fang Blade Arena Deluxe	0	1000	2592000	2	1	2	0	0	0
30009803	702001127	Fang Blade Sakura	0	1000	2592000	2	1	2	0	0	0
30009802	702001127	Fang Blade Sakura	0	1000	604800	2	1	2	0	0	0
30009801	702001127	Fang Blade Sakura	0	1000	86400	2	1	2	0	0	0
30009901	702001129	Keris Beast	0	1000	86400	2	1	2	0	0	0
30009903	702001129	Keris Beast	0	1000	2592000	2	1	2	0	0	0
30009902	702001129	Keris Beast	0	1000	604800	2	1	2	0	0	0
30010003	702001130	Fang Blade PBGC	0	1000	2592000	2	1	2	0	0	0
30010002	702001130	Fang Blade PBGC	0	1000	604800	2	1	2	0	0	0
30010001	702001130	Fang Blade PBGC	0	1000	2592000	2	1	2	0	0	0
30005603	702001131	Fang Blade GSL2016	0	1000	2592000	2	1	2	0	0	0
30005601	702001131	Fang Blade GSL2016	0	1000	86400	2	1	2	0	0	0
30005602	702001131	Fang Blade GSL2016	0	1000	604800	2	1	2	0	0	0
30005701	702001132	Fang Blade Tiger-Normal	0	1000	86400	2	1	2	0	0	0
30005702	702001132	Fang Blade Tiger-Normal	0	1000	604800	2	1	2	0	0	0
30005703	702001132	Fang Blade Tiger-Normal	0	1000	2592000	2	1	2	0	0	0
30005802	702001133	Fang Blade Tiger-Deluxe	0	1000	604800	2	1	2	0	0	0
30005801	702001133	Fang Blade Tiger-Deluxe	0	1000	86400	2	1	2	0	0	0
30005803	702001133	Fang Blade Tiger-Deluxe	0	1000	2592000	2	1	2	0	0	0
30005902	702001136	Fang Blade Dragon	0	1000	604800	2	1	2	0	0	0
30005903	702001136	Fang Blade Dragon	0	1000	2592000	2	1	2	0	0	0
30005901	702001136	Fang Blade Dragon	0	1000	86400	2	1	2	0	0	0
30006001	702001137	Amok Kukri PBWC2016	0	1000	86400	2	1	2	0	0	0
30006003	702001137	Amok Kukri PBWC2016	0	1000	2592000	2	1	2	0	0	0
30006002	702001137	Amok Kukri PBWC2016	0	1000	604800	2	1	2	0	0	0
30006103	702001138	Machete de Combate PBWC2016	0	1000	2592000	2	1	2	0	0	0
30006102	702001138	Machete de Combate PBWC2016	0	1000	604800	2	1	2	0	0	0
30006101	702001138	Machete de Combate PBWC2016	0	1000	2592000	2	1	2	0	0	0
30006203	702001139	Amok Kukri Mummy	0	1000	2592000	2	1	2	0	0	0
30006201	702001139	Amok Kukri Mummy	0	1000	86400	2	1	2	0	0	0
30006202	702001139	Amok Kukri Mummy	0	1000	604800	2	1	2	0	0	0
30006301	702001140	Mini Axe Poison	0	1000	86400	2	1	2	0	0	0
30006302	702001140	Mini Axe Poison	0	1000	604800	2	1	2	0	0	0
30006303	702001140	Mini Axe Poison	0	1000	2592000	2	1	2	0	0	0
30006401	702001143	Amok Kukri Poison	0	1000	86400	2	1	2	0	0	0
30006402	702001143	Amok Kukri Poison	0	1000	604800	2	1	2	0	0	0
30006403	702001143	Amok Kukri Poison	0	1000	2592000	2	1	2	0	0	0
30006501	702001144	Keris ID 1stAnni	0	1000	86400	2	1	2	0	0	0
30006503	702001144	Keris ID 1stAnni	0	1000	2592000	2	1	2	0	0	0
30006502	702001144	Keris ID 1stAnni	0	1000	604800	2	1	2	0	0	0
30006601	702001145	Machete de Combate Strike	0	1000	86400	2	1	2	0	0	0
30006603	702001145	Machete de Combate Strike	0	1000	2592000	2	1	2	0	0	0
30006602	702001145	Machete de Combate Strike	0	1000	604800	2	1	2	0	0	0
30006703	702001146	Death Scythe Demonic	0	1000	2592000	2	1	2	0	0	0
30006702	702001146	Death Scythe Demonic	0	1000	604800	2	1	2	0	0	0
30006701	702001146	Death Scythe Demonic	0	1000	86400	2	1	2	0	0	0
30006801	702001147	Karambit	0	1000	86400	2	1	2	0	0	0
30006803	702001147	Karambit	0	1000	2592000	2	1	2	0	0	0
30006802	702001147	Karambit	0	1000	604800	2	1	2	0	0	0
30006903	702001148	Ladle Lebaran2016	0	1000	2592000	2	1	2	0	0	0
30006901	702001148	Ladle Lebaran2016	0	1000	86400	2	1	2	0	0	0
30006902	702001148	Ladle Lebaran2016	0	1000	604800	2	1	2	0	0	0
30007001	702001149	Fang Blade Alien	0	1000	2592000	2	1	2	0	0	0
30007003	702001149	Fang Blade Alien	0	1000	2592000	2	1	2	0	0	0
30007002	702001149	Fang Blade Alien	0	1000	604800	2	1	2	0	0	0
30007102	702001150	Machete de Combate Newborn2016	0	1000	604800	2	1	2	0	0	0
30007101	702001150	Machete de Combate Newborn2016	0	1000	86400	2	1	2	0	0	0
30007103	702001150	Machete de Combate Newborn2016	0	1000	2592000	2	1	2	0	0	0
30007202	702001151	Ballistic Knife Russian Normal	0	1000	604800	2	1	2	4	0	0
30007203	702001151	Ballistic Knife Russian Normal	0	1000	2592000	2	1	2	4	0	0
30007201	702001151	Ballistic Knife Russian Normal	0	1000	86400	2	1	2	4	0	0
30007301	702001153	Ballistic Knife Russian Deluxe	0	1000	86400	2	1	2	4	0	0
30007303	702001153	Ballistic Knife Russian Deluxe	0	1000	2592000	2	1	2	4	0	0
30007302	702001153	Ballistic Knife Russian Deluxe	0	1000	604800	2	1	2	4	0	0
30007403	702001155	Machete de Combate PBIC2016	0	1000	2592000	2	1	2	0	0	0
30007402	702001155	Machete de Combate PBIC2016	0	1000	604800	2	1	2	0	0	0
30007401	702001155	Machete de Combate PBIC2016	0	1000	86400	2	1	2	0	0	0
30007601	702001160	Espada Árabe PBNC2016	0	1000	86400	2	1	2	0	0	0
30007602	702001160	Espada Árabe PBNC2016	0	1000	604800	2	1	2	0	0	0
30007603	702001160	Espada Árabe PBNC2016	0	1000	2592000	2	1	2	0	0	0
30007703	702001161	Fang Blade SUPREME	0	1000	2592000	2	1	2	0	0	0
30007701	702001161	Fang Blade SUPREME	0	1000	86400	2	1	2	0	0	0
30007702	702001161	Fang Blade SUPREME	0	1000	604800	2	1	2	0	0	0
30007802	702001162	Halloween Hammer	0	1000	2592000	2	1	2	0	0	0
30007803	702001162	Halloween Hammer	0	1000	2592000	2	1	2	0	0	0
30007801	702001162	Halloween Hammer	0	1000	86400	2	1	2	0	0	0
30010501	702001212	FANGBLADE FIREDRAGON	0	1000	86400	2	1	1	0	0	0
30010503	702001212	FANGBLADE FIREDRAGON	0	1000	2592000	2	1	1	0	0	0
30010502	702001212	FANGBLADE FIREDRAGON	0	1000	604800	2	1	1	0	0	0
702001220	702001220	Karambit Nevasca	0	1000	2592000	2	1	2	5	0	0
702001221	702001221	Bone Knife ZEPETTO	0	1000	2592000	2	1	2	1	0	0
30010702	702001232	KARAMBIT M1LGR4U	0	1000	604800	2	1	1	1	0	0
30010701	702001232	KARAMBIT M1LGR4U	0	1000	86400	2	1	1	1	0	0
30010703	702001232	KARAMBIT M1LGR4U	0	1000	2592000	2	1	2	1	0	0
30010302	702001242	KNIFE_KUKRI_PBWC2018KNIFE	0	1000	604800	2	1	1	0	0	0
30010301	702001242	KNIFE_KUKRI_PBWC2018KNIFE	0	1000	86400	2	1	1	0	0	0
30010303	702001242	KNIFE_KUKRI_PBWC2018KNIFE	0	1000	2592000	2	1	1	0	0	0
702001244	702001244	Fang Blade Surfing	0	1000	2592000	2	1	2	1	0	0
30000501	702015001	Dual Knife 	0	1000	100	1	1	2	0	26	0
30000502	702015001	Dual Knife 	0	1000	500	1	1	2	0	26	0
30000601	702015003	Faca de Osso	0	1000	100	1	1	2	0	0	0
30000602	702015003	Faca de Osso	0	1000	500	1	1	2	0	0	0
30007902	702015007	Faca de Osso GRS2	0	1000	604800	2	1	2	0	0	0
30007901	702015007	Faca de Osso GRS2	0	1000	86400	2	1	2	0	0	0
30007903	702015007	Faca de Osso GRS2	0	1000	2592000	2	1	2	0	0	0
30008001	702015008	Kunai	0	1000	86400	2	1	2	0	0	0
30008003	702015008	Kunai	0	1000	2592000	2	1	2	0	0	0
30008002	702015008	Kunai	0	1000	604800	2	1	2	0	0	0
30008102	702015009	Faca de Osso PBNC2015	0	1000	604800	2	1	2	0	0	0
30008103	702015009	Faca de Osso PBNC2015	0	1000	2592000	2	1	2	0	0	0
30008101	702015009	Faca de Osso PBNC2015	0	1000	86400	2	1	2	0	0	0
30008201	702015010	Faca de Osso Camo Soldier	0	1000	86400	2	1	2	0	0	0
30008202	702015010	Faca de Osso Camo Soldier	0	1000	604800	2	1	2	0	0	0
30008203	702015010	Faca de Osso Camo Soldier	0	1000	2592000	2	1	2	0	0	0
30008302	702015011	Dual Knife Vera Cruz 2016	0	1000	604800	2	1	2	0	0	0
30008301	702015011	Dual Knife Vera Cruz 2016	0	1000	86400	2	1	2	0	0	0
30008303	702015011	Dual Knife Vera Cruz 2016	0	1000	2592000	2	1	2	0	0	0
30008403	702015012	Kunai Serpent	0	1000	2592000	2	1	2	0	0	0
30008401	702015012	Kunai Serpent	0	1000	86400	2	1	2	0	0	0
30008402	702015012	Kunai Serpent	0	1000	604800	2	1	2	0	0	0
30008502	702015013	Faca de Osso Skeleton	0	1000	604800	2	1	2	0	0	0
30008501	702015013	Faca de Osso Skeleton	0	1000	86400	2	1	2	0	0	0
30008503	702015013	Faca de Osso Skeleton	0	1000	2592000	2	1	2	0	0	0
30008603	702015014	Faca de Osso E-Sports2	0	1000	2592000	2	1	2	0	0	0
30008602	702015014	Faca de Osso E-Sports2	0	1000	604800	2	1	2	0	0	0
30008601	702015014	Faca de Osso E-Sports2	0	1000	86400	2	1	2	0	0	0
30008701	702015015	Dual Sword TH	0	1000	86400	2	1	2	0	0	0
30008702	702015015	Dual Sword TH	0	1000	604800	2	1	2	0	0	0
30008703	702015015	Dual Sword TH	0	1000	2592000	2	1	2	0	0	0
30010403	702015025	DUALKNIFE M9 DIGITAL	0	1000	2592000	2	1	1	1	0	0
30010402	702015025	DUALKNIFE M9 DIGITAL	0	1000	604800	2	1	1	1	0	0
30010401	702015025	DUALKNIFE M9 DIGITAL	0	1000	86400	2	1	1	1	0	0
30010603	702015026	BONEKNIFE M1LGR4U	0	1000	2592000	2	1	1	1	0	0
30010601	702015026	BONEKNIFE M1LGR4U	0	1000	86400	2	1	1	1	0	0
30010602	702015026	BONEKNIFE M1LGR4U	0	1000	604800	2	1	1	1	0	0
30000101	702023002	Black Knuckles 	0	1000	100	1	1	2	0	0	0
30000102	702023002	Black Knuckles 	0	1000	500	1	1	2	0	0	0
30008803	702023003	Brass Knuckles 	0	1000	2592000	2	1	2	0	0	0
30008801	702023003	Brass Knuckles 	0	1000	86400	2	1	2	0	0	0
30008802	702023003	Brass Knuckles 	0	1000	604800	2	1	2	0	0	0
30008903	702023004	Silver Knuckles 	0	1000	2592000	2	1	2	0	0	0
30008901	702023004	Silver Knuckles 	0	1000	86400	2	1	2	0	0	0
30008902	702023004	Silver Knuckles 	0	1000	604800	2	1	2	0	0	0
30009003	702023005	Pumpkin knuckles	0	1000	2592000	2	1	2	0	0	0
30009001	702023005	Pumpkin knuckles	0	1000	86400	2	1	2	0	0	0
30009002	702023005	Pumpkin knuckles	0	1000	604800	2	1	2	0	0	0
30009101	702023006	Spiked Knuckle 	0	1000	86400	2	1	2	0	0	0
30009102	702023006	Spiked Knuckle 	0	1000	2592000	2	1	2	0	0	0
30009103	702023006	Spiked Knuckle 	0	1000	2592000	2	1	2	0	0	0
30009202	702023007	Ballock Knuckle	0	1000	604800	2	1	2	0	0	0
30009203	702023007	Ballock Knuckle	0	1000	2592000	2	1	2	0	0	0
30009201	702023007	Ballock Knuckle	0	1000	86400	2	1	2	0	0	0
30009303	702023009	Garena Knuckles	0	1000	2592000	2	1	2	0	0	0
30009301	702023009	Garena Knuckles	0	1000	86400	2	1	2	0	0	0
30009302	702023009	Garena Knuckles	0	1000	604800	2	1	2	0	0	0
30009502	702023010	Zombie Knuckle	0	1000	604800	2	1	2	0	0	0
30009501	702023010	Zombie Knuckle	0	1000	86400	2	1	2	0	0	0
30009503	702023010	Zombie Knuckle	0	1000	2592000	2	1	2	0	0	0
40000102	803007004	C-5	0	1000	500	1	1	2	0	0	0
40000101	803007004	C-5	0	1000	100	1	1	2	0	0	0
40002702	803007006	C-5 D	0	1000	604800	2	1	2	0	0	0
40002703	803007006	C-5 D	0	1000	2592000	2	1	2	0	0	0
40002701	803007006	C-5 D	0	1000	86400	2	1	2	0	0	0
40000202	803007008	K-413 granada	0	1000	500	1	1	2	0	0	0
40000201	803007008	K-413 granada	0	1000	100	1	1	2	0	0	0
40002801	803007009	Granada de Chocolate	0	1000	86400	2	1	2	0	0	0
40002802	803007009	Granada de Chocolate	0	1000	604800	2	1	2	0	0	0
40002803	803007009	Granada de Chocolate	0	1000	2592000	2	1	2	0	0	0
40001803	803007018	K-413 G	0	1000	2592000	2	1	2	0	0	0
40001802	803007018	K-413 G	0	1000	604800	2	1	2	0	0	0
40001801	803007018	K-413 G	0	1000	86400	2	1	2	0	0	0
40000302	803007020	Granada de açúcar	0	1000	500	1	1	2	0	0	0
40000301	803007020	Granada de açúcar	0	1000	100	1	1	2	0	0	0
40000401	803007026	Decoy Bomb	0	1000	100	1	1	2	0	0	0
40000402	803007026	Decoy Bomb	0	1000	500	1	1	2	0	0	0
40000502	803007027	M-14 Mine	0	1000	500	1	1	2	0	0	0
40000501	803007027	M-14 Mine	0	1000	100	1	1	2	0	0	0
40001903	803007028	K-479	0	1000	2592000	2	1	2	0	0	0
40001902	803007028	K-479	0	1000	604800	2	1	2	0	0	0
40001901	803007028	K-479	0	1000	86400	2	1	2	0	0	0
40002002	803007033	Soccer Grenade	0	1000	604800	2	1	2	0	0	0
40002003	803007033	Soccer Grenade	0	1000	2592000	2	1	2	0	0	0
40002001	803007033	Soccer Grenade	0	1000	86400	2	1	2	0	0	0
40003203	803007035	M-14 Mine D	0	1000	2592000	2	1	2	0	0	0
40003201	803007035	M-14 Mine D	0	1000	86400	2	1	2	0	0	0
40003202	803007035	M-14 Mine D	0	1000	604800	2	1	2	0	0	0
40003303	803007036	K-413 Traditional	0	1000	2592000	2	1	2	0	0	0
40003301	803007036	K-413 Traditional	0	1000	2592000	2	1	2	0	0	0
40003302	803007036	K-413 Traditional	0	1000	604800	2	1	2	0	0	0
40003402	803007037	K-413 PC Cafe	0	1000	500	2	1	2	4	0	0
40003401	803007037	K-413 PC Cafe	0	1000	100	2	1	2	4	0	0
40003503	803007038	ShuttleCock Grenade	0	1000	2592000	2	1	2	0	0	0
40003501	803007038	ShuttleCock Grenade	0	1000	86400	2	1	2	0	0	0
40003502	803007038	ShuttleCock Grenade	0	1000	604800	2	1	2	0	0	0
40000603	803007039	SepakTakraw Grenade	0	1000	2592000	2	1	2	0	0	0
40000601	803007039	SepakTakraw Grenade	0	1000	86400	2	1	2	0	0	0
40000602	803007039	SepakTakraw Grenade	0	1000	604800	2	1	2	0	0	0
40003101	803007040	M18A1 Claymore	0	1000	86400	2	1	2	0	0	0
40003103	803007040	M18A1 Claymore	0	1000	2592000	2	1	2	0	0	0
40003102	803007040	M18A1 Claymore	0	1000	604800	2	1	2	0	0	0
40002901	803007042	Granada de Ovelha	0	1000	86400	2	1	2	0	0	0
40002902	803007042	Granada de Ovelha	0	1000	604800	2	1	2	0	0	0
40002903	803007042	Granada de Ovelha	0	1000	2592000	2	1	2	0	0	0
40002301	803007044	C-5 ANC 2015	0	1000	86400	2	1	2	0	0	0
40002303	803007044	C-5 ANC 2015	0	1000	2592000	2	1	2	0	0	0
40002302	803007044	C-5 ANC 2015	0	1000	604800	2	1	2	0	0	0
40000701	803007045	PB Chocolate	0	1000	86400	2	1	2	0	0	0
40000703	803007045	PB Chocolate	0	1000	2592000	2	1	2	0	0	0
40000702	803007045	PB Chocolate	0	1000	604800	2	1	2	0	0	0
40000803	803007047	K-413 Redemption	0	1000	2592000	2	1	2	0	0	0
40000801	803007047	K-413 Redemption	0	1000	86400	2	1	2	0	0	0
40000802	803007047	K-413 Redemption	0	1000	604800	2	1	2	0	0	0
40000901	803007049	K-413 4Game	0	1000	2592000	2	1	2	0	0	0
40000903	803007049	K-413 4Game	0	1000	2592000	2	1	2	0	0	0
40000902	803007049	K-413 4Game	0	1000	604800	2	1	2	0	0	0
40001001	803007050	K-413 4Game SE	0	1000	86400	2	1	2	0	0	0
40001003	803007050	K-413 4Game SE	0	1000	2592000	2	1	2	0	0	0
40001002	803007050	K-413 4Game SE	0	1000	2592000	2	1	2	0	0	0
40003001	803007052	Snowman Grenade	0	1000	86400	2	1	2	0	0	0
40003002	803007052	Snowman Grenade	0	1000	604800	2	1	2	0	0	0
40003003	803007052	Snowman Grenade	0	1000	2592000	2	1	2	0	0	0
40002203	803007053	WaterBomb	0	1000	2592000	2	1	2	0	0	0
40002201	803007053	WaterBomb	0	1000	86400	2	1	2	0	0	0
40002202	803007053	WaterBomb	0	1000	604800	2	1	2	0	0	0
40001102	803007054	K-413 Tiger-Normal	0	1000	604800	2	1	2	0	0	0
40001101	803007054	K-413 Tiger-Normal	0	1000	86400	2	1	2	0	0	0
40001103	803007054	K-413 Tiger-Normal	0	1000	2592000	2	1	2	0	0	0
40001201	803007055	K-413 Tiger-Deluxe	0	1000	86400	2	1	2	0	0	0
40001202	803007055	K-413 Tiger-Deluxe	0	1000	604800	2	1	2	0	0	0
40001203	803007055	K-413 Tiger-Deluxe	0	1000	2592000	2	1	2	0	0	0
40002601	803007056	C-5 PBWC2016	0	1000	86400	2	1	2	0	0	0
40002603	803007056	C-5 PBWC2016	0	1000	2592000	2	1	2	0	0	0
40002602	803007056	C-5 PBWC2016	0	1000	604800	2	1	2	0	0	0
40001301	803007057	Mummy Grenade	0	1000	86400	2	1	2	0	0	0
40001302	803007057	Mummy Grenade	0	1000	604800	2	1	2	0	0	0
40001303	803007057	Mummy Grenade	0	1000	2592000	2	1	2	0	0	0
40001403	803007062	K-400 Alien	0	1	2592000	2	1	2	0	0	0
40001401	803007062	K-400 Alien	0	1000	86400	2	1	2	0	0	0
40001402	803007062	K-400 Alien	0	1	604800	2	1	2	0	0	0
40001503	803007063	K-413 Puzzle	0	1	2592000	2	1	2	0	0	0
40001501	803007063	K-413 Puzzle	0	1	86400	2	1	2	0	0	0
40001502	803007063	K-413 Puzzle	0	1	604800	2	1	2	0	0	0
40001603	803007064	K-413 Russian Normal	0	1000	2592000	2	1	2	4	0	0
40001601	803007064	K-413 Russian Normal	0	1000	86400	2	1	2	4	0	0
40001602	803007064	K-413 Russian Normal	0	1000	604800	2	1	2	4	0	0
40001703	803007065	K-413 Russian Deluxe	0	1000	2592000	2	1	2	4	0	0
40001702	803007065	K-413 Russian Deluxe	0	1000	2592000	2	1	2	4	0	0
40001701	803007065	K-413 Russian Deluxe	0	1000	86400	2	1	2	4	0	0
40002101	803007066	Bola de Futebol 2016	0	1000	86400	2	1	2	0	0	0
40002102	803007066	Bola de Futebol 2016	0	1000	604800	2	1	2	0	0	0
40002103	803007066	Bola de Futebol 2016	0	1000	2592000	2	1	2	0	0	0
40002403	803007067	C-5 PBIC2016	0	1000	2592000	2	1	2	0	0	0
40002401	803007067	C-5 PBIC2016	0	1000	86400	2	1	2	0	0	0
40002402	803007067	C-5 PBIC2016	0	1000	604800	2	1	2	0	0	0
40002503	803007068	C-5 PBNC2016	0	1000	2592000	2	1	2	0	0	0
40002502	803007068	C-5 PBNC2016	0	1000	2592000	2	1	2	0	0	0
40002501	803007068	C-5 PBNC2016	0	1000	86400	2	1	2	0	0	0
40003702	803007077	K 400 M1LGR4U	0	1000	604800	2	1	2	1	0	0
40003701	803007077	K 400 M1LGR4U	0	1000	86400	2	1	2	1	0	0
40003703	803007077	K 400 M1LGR4U	0	1000	2592000	2	1	2	1	0	0
40003602	803007079	THROWING_C5_PBWC2018	0	1000	604800	2	1	2	4	0	0
40003601	803007079	THROWING_C5_PBWC2018	0	1000	86400	2	1	2	4	0	0
40003603	803007079	THROWING_C5_PBWC2018	0	1000	2592000	2	1	2	4	0	0
50000102	904007005	WP Smoke	0	1000	500	2	1	2	0	0	0
50000101	904007005	WP Smoke	0	1000	100	2	1	2	0	0	0
50000202	904007011	Medical Kit	0	1000	500	2	1	2	1	0	0
50000201	904007011	Medical Kit	0	1000	100	2	1	2	1	0	0
50000303	904007013	FlashBang Plus	0	1000	2592000	2	1	2	0	0	0
50000301	904007013	FlashBang Plus	0	1000	2592000	2	1	2	0	0	0
50000302	904007013	FlashBang Plus	0	1000	604800	2	1	2	0	0	0
50000401	904007014	Halloween Medical Kit	0	1000	86400	2	1	2	1	0	0
50000403	904007014	Halloween Medical Kit	0	1000	2592000	2	1	2	1	0	0
50000402	904007014	Halloween Medical Kit	0	1000	604800	2	1	2	1	0	0
50000502	904007015	Chocolate Medical Kit	0	1000	604800	2	1	2	0	0	0
50000501	904007015	Chocolate Medical Kit	0	1000	86400	2	1	2	0	0	0
50000503	904007015	Chocolate Medical Kit	0	1000	2592000	2	1	2	0	0	0
50000602	904007021	Medical Kit Lotus	0	1000	604800	2	1	2	0	0	0
50000601	904007021	Medical Kit Lotus	0	1000	86400	2	1	2	0	0	0
50000603	904007021	Medical Kit Lotus	0	1000	2592000	2	1	2	0	0	0
50000701	904007025	Medical Kit Opor Ayam	0	1000	2592000	2	1	2	0	0	0
50000703	904007025	Medical Kit Opor Ayam	0	1000	2592000	2	1	2	0	0	0
50000702	904007025	Medical Kit Opor Ayam	0	1000	604800	2	1	2	0	0	0
50000801	904007029	Medical Kit PBNC5	0	1000	86400	2	1	2	0	0	0
50000803	904007029	Medical Kit PBNC5	0	1000	2592000	2	1	2	0	0	0
50000802	904007029	Medical Kit PBNC5	0	1000	604800	2	1	2	0	0	0
50000901	904007032	Medical Kit Lotus2014	0	1000	86400	2	1	2	0	0	0
50000902	904007032	Medical Kit Lotus2014	0	1000	604800	2	1	2	0	0	0
50000903	904007032	Medical Kit Lotus2014	0	1000	2592000	2	1	2	0	0	0
50001002	904007043	Medical Kit Kurma	0	1000	604800	2	1	2	0	0	0
50001003	904007043	Medical Kit Kurma	0	1000	2592000	2	1	2	0	0	0
50001001	904007043	Medical Kit Kurma	0	1000	86400	2	1	2	0	0	0
50001103	904007051	Medical Kit PBNC2015	0	1000	2592000	2	1	2	0	0	0
50001101	904007051	Medical Kit PBNC2015	0	1000	86400	2	1	2	0	0	0
50001102	904007051	Medical Kit PBNC2015	0	1000	604800	2	1	2	0	0	0
50001201	904007059	Smoke Pink	0	1000	86400	2	1	2	1	0	0
50001203	904007059	Smoke Pink	0	1000	2592000	2	1	2	1	0	0
50001202	904007059	Smoke Pink	0	1000	604800	2	1	2	1	0	0
50001301	904007060	Smoke Blue	0	1000	86400	2	1	2	1	0	0
50001302	904007060	Smoke Blue	0	1000	604800	2	1	2	1	0	0
50001303	904007060	Smoke Blue	0	1000	2592000	2	1	2	1	0	0
50001402	904007061	Smoke Yellow	0	1000	604800	2	1	2	1	0	0
50001403	904007061	Smoke Yellow	0	1000	2592000	2	1	2	1	0	0
50001401	904007061	Smoke Yellow	0	1000	86400	2	1	2	1	0	0
60000403	1001001003	Tarantula	0	1000	500	2	1	2	0	0	0
60000401	1001001003	Tarantula	0	1000	50	2	1	2	0	0	0
60000402	1001001003	Tarantula	0	1000	100	2	1	2	0	0	0
60000501	1001001007	D-Fox (+20% EXP)	0	1000	50	2	1	2	0	0	0
60000503	1001001007	D-Fox (+20% EXP)	0	1000	500	2	1	2	0	0	0
60000502	1001001007	D-Fox (+20% EXP)	0	1000	100	2	1	2	0	0	0
60000802	1001001010	Viper Red (+30% Gold)	0	1000	100	2	1	2	0	0	0
60000803	1001001010	Viper Red (+30% Gold)	0	1000	2592000	2	1	2	0	0	0
60000801	1001001010	Viper Red (+30% Gold)	0	1000	50	2	1	2	0	0	0
130076096	1001001013	P	0	1000	2592000	2	1	2	1	0	0
60002803	1001001015	Reinforced Combo D-Fox (+20% EXP) [R]	0	1000	2592000	2	1	2	0	0	0
60002801	1001001015	Reinforced Combo D-Fox (+20% EXP) [R]	0	1000	86400	2	1	2	0	0	0
60002802	1001001015	Reinforced Combo D-Fox (+20% EXP) [R]	0	1000	604800	2	1	2	0	0	0
60003001	1001001017	Reinforced Combo Viper Red (+30% Gold) [R]	0	1000	86400	2	1	2	0	0	0
60003002	1001001017	Reinforced Combo Viper Red (+30% Gold) [R]	0	1000	604800	2	1	2	0	0	0
60003003	1001001017	Reinforced Combo Viper Red (+30% Gold) [R]	0	1000	2592000	2	1	2	0	0	0
60000102	1001001034	Rica	0	1000	100	2	1	2	0	0	0
60000101	1001001034	Rica	0	1000	50	2	1	2	0	0	0
60000103	1001001034	Rica	0	1000	500	2	1	2	0	0	0
60003601	1001001036	Reinforced Bella [R]	0	1000	86400	2	1	2	0	0	0
60003602	1001001036	Reinforced Bella [R]	0	1000	604800	2	1	2	0	0	0
60003603	1001001036	Reinforced Bella [R]	0	1000	2592000	2	1	2	0	0	0
60001103	1001001049	Tarantula - Garena(20%Exp)	0	1000	2592000	2	1	2	0	0	0
60001102	1001001049	Tarantula - Garena(20%Exp)	0	1000	604800	2	1	2	0	0	0
60001101	1001001049	Tarantula - Garena(20%Exp)	0	1000	86400	2	1	2	0	0	0
60001502	1001001054	World Tarantula [R]	0	1000	604800	2	1	2	0	0	0
60001503	1001001054	World Tarantula [R]	0	1000	2592000	2	1	2	0	0	0
60001501	1001001054	World Tarantula [R]	0	1000	86400	2	1	2	0	0	0
60001603	1001001055	Viper Shadow [R]	0	1000	2592000	2	1	2	0	0	0
60001601	1001001055	Viper Shadow [R]	0	1000	86400	2	1	2	0	0	0
60001602	1001001055	Viper Shadow [R]	0	1000	604800	2	1	2	0	0	0
60002301	1001001068	Viper Kopassus [R]	0	1000	86400	2	1	2	0	0	0
60002303	1001001068	Viper Kopassus [R]	0	1000	2592000	2	1	2	0	0	0
60002302	1001001068	Viper Kopassus [R]	0	1000	604800	2	1	2	0	0	0
60003302	1001001069	Bella FBI [R]	0	1000	604800	2	1	2	4	0	0
60003301	1001001069	Bella FBI [R]	0	1000	86400	2	1	2	4	0	0
60003303	1001001069	Bella FBI [R]	0	1000	2592000	2	1	2	4	0	0
130076081	1001001087	A	0	1000	2592000	2	1	2	1	0	0
130076074	1001001095	REBEL Viper BOMZ	0	1000	2592000	2	1	2	1	0	0
130076097	1001001137	Q	0	1000	2592000	2	1	2	1	0	0
130076082	1001001268	B	0	1000	2592000	2	1	2	1	0	0
130076083	1001001275	C	0	1000	2592000	2	1	2	1	0	0
130076084	1001001302	D	0	1000	2592000	2	1	2	1	0	0
130076085	1001001320	E	0	1000	2592000	2	1	2	1	0	0
130076086	1001001356	F	0	1000	2592000	2	1	2	1	0	0
130076087	1001001394	G	0	1000	2592000	2	1	2	1	0	0
60003701	1001001415	Bella HalloweenNurse [R]	0	1000	86400	2	1	2	1	0	0
60003703	1001001415	Bella HalloweenNurse [R]	0	1000	2592000	2	1	2	1	0	0
60003702	1001001415	Bella HalloweenNurse [R]	0	1000	604800	2	1	2	1	0	0
130076073	1001001421	Bella Rangda	0	1000	2592000	2	1	2	1	0	0
130076098	1001001436	R	0	1000	2592000	2	1	2	1	0	0
60003201	1001001465	Bella_PinkChoco [R]	0	1000	86400	2	1	2	4	0	0
60003202	1001001465	Bella_PinkChoco [R]	0	1000	604800	2	1	2	4	0	0
60003203	1001001465	Bella_PinkChoco [R]	0	1000	2592000	2	1	2	4	0	0
60000202	1001002004	Keen Eyes	0	1000	100	2	1	2	0	0	0
60000203	1001002004	Keen Eyes	0	1000	2592000	2	1	2	0	0	0
60000201	1001002004	Keen Eyes	0	1000	50	2	1	2	0	0	0
60000603	1001002008	Leopard (+20% EXP)	0	1000	500	2	1	2	0	0	0
60000602	1001002008	Leopard (+20% EXP)	0	1000	100	2	1	2	0	0	0
60000601	1001002008	Leopard (+20% EXP)	0	1000	50	2	1	2	0	0	0
60000701	1001002009	Hide (+30% Gold)	0	1000	50	2	1	2	0	0	0
60000703	1001002009	Hide (+30% Gold)	0	1000	500	2	1	2	0	0	0
60000702	1001002009	Hide (+30% Gold)	0	1000	100	2	1	2	0	0	0
60002902	1001002016	Reinforced Combo Leopard (+20% EXP) [R]	0	1000	604800	2	1	2	0	0	0
60002903	1001002016	Reinforced Combo Leopard (+20% EXP) [R]	0	1000	2592000	2	1	2	0	0	0
60002901	1001002016	Reinforced Combo Leopard (+20% EXP) [R]	0	1000	86400	2	1	2	0	0	0
60000903	1001002018	Reinforced Combo Hide (+30% Gold) [R]	0	1000	2592000	2	1	2	0	0	0
60000902	1001002018	Reinforced Combo Hide (+30% Gold) [R]	0	1000	604800	2	1	2	0	0	0
60000901	1001002018	Reinforced Combo Hide (+30% Gold) [R]	0	1000	86400	2	1	2	0	0	0
60000302	1001002033	Chou	0	1000	100	2	1	2	0	0	0
60000301	1001002033	Chou	0	1000	50	2	1	2	0	0	0
60000303	1001002033	Chou	0	1000	500	2	1	2	0	0	0
60003503	1001002035	Reinforced Chou [R]	0	1000	2592000	2	1	2	0	0	0
60003501	1001002035	Reinforced Chou [R]	0	1000	86400	2	1	2	0	0	0
60003502	1001002035	Reinforced Chou [R]	0	1000	604800	2	1	2	0	0	0
60001003	1001002047	Keen Eyes - Garena (20%Exp)	0	1000	2592000	2	1	2	0	0	0
60001001	1001002047	Keen Eyes - Garena (20%Exp)	0	1000	86400	2	1	2	0	0	0
60001002	1001002047	Keen Eyes - Garena (20%Exp)	0	1000	604800	2	1	2	0	0	0
60001202	1001002051	Hide Kopassus [R]	0	1000	604800	2	1	2	0	0	0
60001203	1001002051	Hide Kopassus [R]	0	1000	2592000	2	1	2	0	0	0
60001201	1001002051	Hide Kopassus [R]	0	1000	86400	2	1	2	0	0	0
60001303	1001002052	Leopard Bope	0	1000	2592000	2	1	2	0	0	0
60001302	1001002052	Leopard Bope	0	1000	604800	2	1	2	0	0	0
60001301	1001002052	Leopard Bope	0	1000	86400	2	1	2	0	0	0
60001403	1001002053	Hide Cup [R]	0	1000	2592000	2	1	2	0	0	0
60001402	1001002053	Hide Cup [R]	0	1000	604800	2	1	2	0	0	0
60001401	1001002053	Hide Cup [R]	0	1000	86400	2	1	2	0	0	0
60001701	1001002056	Hide Recon [R]	0	1000	86400	2	1	2	0	0	0
60001703	1001002056	Hide Recon [R]	0	1000	2592000	2	1	2	0	0	0
60001702	1001002056	Hide Recon [R]	0	1000	2592000	2	1	2	0	0	0
60001801	1001002062	Acid Paul Infectado	0	1000	86400	2	1	2	0	0	0
60001803	1001002062	Acid Paul Infectado	0	1000	2592000	2	1	2	0	0	0
60001802	1001002062	Acid Paul Infectado	0	1000	604800	2	1	2	0	0	0
60001903	1001002063	Kin Eyes Infectada	0	1000	2592000	2	1	2	0	0	0
60001901	1001002063	Kin Eyes Infectada	0	1000	86400	2	1	2	0	0	0
60001902	1001002063	Kin Eyes Infectada	0	1000	604800	2	1	2	0	0	0
60002001	1001002064	Hide Infectada	0	1000	86400	2	1	2	0	0	0
60002002	1001002064	Hide Infectada	0	1000	604800	2	1	2	0	0	0
60002003	1001002064	Hide Infectada	0	1000	2592000	2	1	2	0	0	0
60002103	1001002065	Leopard Infectado	0	1000	2592000	2	1	2	0	0	0
60002101	1001002065	Leopard Infectado	0	1000	86400	2	1	2	0	0	0
60002102	1001002065	Leopard Infectado	0	1000	604800	2	1	2	0	0	0
60002203	1001002067	Hide Strike [R]	0	1000	2592000	2	1	2	0	0	0
60002202	1001002067	Hide Strike [R]	0	1000	604800	2	1	2	0	0	0
60002201	1001002067	Hide Strike [R]	0	1000	86400	2	1	2	0	0	0
60003402	1001002144	Chou FBI [R]	0	1000	604800	2	1	2	4	0	0
60003403	1001002144	Chou FBI [R]	0	1000	2592000	2	1	2	4	0	0
60003401	1001002144	Chou FBI [R]	0	1000	86400	2	1	2	4	0	0
130076088	1001002156	H	0	1000	2592000	2	1	2	1	0	0
130076089	1001002157	I	0	1000	2592000	2	1	2	1	0	0
130076090	1001002175	J	0	1000	2592000	2	1	2	1	0	0
130076075	1001002183	Hide Jump	0	1000	2592000	2	1	2	1	0	0
130076099	1001002225	S	0	1000	2592000	2	1	2	1	0	0
130076091	1001002270	K	0	1000	2592000	2	1	2	1	0	0
130076092	1001002278	L	0	1000	2592000	2	1	2	1	0	0
130076093	1001002305	M	0	1000	2592000	2	1	2	1	0	0
130076094	1001002311	N	0	1000	2592000	2	1	2	1	0	0
130076095	1001002353	O	0	1000	2592000	2	1	2	1	0	0
130076072	1001002413	Chou Pocong	0	1000	2592000	2	1	2	1	0	0
60003802	1001002418	Chou HalloweenNurse [R]	0	1000	604800	2	1	2	1	0	0
60003803	1001002418	Chou HalloweenNurse [R]	0	1000	2592000	2	1	2	1	0	0
60003801	1001002418	Chou HalloweenNurse [R]	0	1000	86400	2	1	2	1	0	0
130076100	1001002439	T	0	1000	2592000	2	1	2	1	0	0
60003103	1001002462	Chou_MintChoco [R]	0	1000	2592000	2	1	2	4	0	0
60003102	1001002462	Chou_MintChoco [R]	0	1000	604800	2	1	2	4	0	0
60003101	1001002462	Chou_MintChoco [R]	0	1000	86400	2	1	2	4	0	0
60002402	1006003032	Elite Dino	0	1000	604800	2	1	2	0	0	0
60002401	1006003032	Elite Dino	0	1000	86400	2	1	2	0	0	0
60002403	1006003032	Elite Dino	0	1000	2592000	2	1	2	0	0	0
60002503	1006003044	Raptor Mercury Dino (Reinforced Raptor)	0	1000	2592000	2	1	2	0	0	0
60002501	1006003044	Raptor Mercury Dino (Reinforced Raptor)	0	1000	86400	2	1	2	0	0	0
60002502	1006003044	Raptor Mercury Dino (Reinforced Raptor)	0	1000	604800	2	1	2	0	0	0
60002602	1006003045	Sting Mars Dino (Reinforced Sting)	0	1000	604800	2	1	2	0	0	0
60002601	1006003045	Sting Mars Dino (Reinforced Sting)	0	1000	86400	2	1	2	0	0	0
60002603	1006003045	Sting Mars Dino (Reinforced Sting)	0	1000	2592000	2	1	2	0	0	0
60002703	1006003046	Acid Vulcan Dino (Reinforced Acid)	0	1000	2592000	2	1	2	0	0	0
60002702	1006003046	Acid Vulcan Dino (Reinforced Acid)	0	1000	604800	2	1	2	0	0	0
60002701	1006003046	Acid Vulcan Dino (Reinforced Acid)	0	1000	86400	2	1	2	0	0	0
70000101	1102003002	Normal Headgear	0	1000	100	2	1	2	0	0	0
70000102	1102003002	Normal Headgear	0	1000	500	2	1	2	0	0	0
70000201	1102003003	Reinforced Headgear	0	1000	86400	2	1	2	0	0	0
70000203	1102003003	Reinforced Headgear	0	1000	2592000	2	1	2	0	0	0
70000202	1102003003	Reinforced Headgear	0	1000	604800	2	1	2	0	0	0
70001903	1102003006	Target Headgear	0	1000	2592000	2	1	2	0	0	0
70001901	1102003006	Target Headgear	0	1000	86400	2	1	2	0	0	0
70001902	1102003006	Target Headgear	0	1000	604800	2	1	2	0	0	0
70002003	1102003007	Reinforced Headgear	0	1000	2592000	2	1	2	0	0	0
70002001	1102003007	Reinforced Headgear	0	1000	86400	2	1	2	0	0	0
70002002	1102003007	Reinforced Headgear	0	1000	604800	2	1	2	0	0	0
70002103	1102003008	Super Headgear	0	1000	2592000	2	1	2	0	0	0
70002101	1102003008	Super Headgear	0	1000	86400	2	1	2	0	0	0
70002102	1102003008	Super Headgear	0	1000	604800	2	1	2	0	0	0
70002201	1102003009	Anel de Anjo	0	1000	86400	2	1	2	0	0	0
70002202	1102003009	Anel de Anjo	0	1000	604800	2	1	2	0	0	0
70002203	1102003009	Anel de Anjo	0	1000	2592000	2	1	2	0	0	0
70000601	1103003006	Boina Negra	0	1000	86400	2	1	2	0	0	0
70000603	1103003006	Boina Negra	0	1000	2592000	2	1	2	0	0	0
70000602	1103003006	Boina Negra	0	1000	604800	2	1	2	0	0	0
70000703	1103003007	Boina Che-Vermelha	0	1000	2592000	2	1	2	0	0	0
70000701	1103003007	Boina Che-Vermelha	0	1000	2592000	2	1	2	0	0	0
70000702	1103003007	Boina Che-Vermelha	0	1000	604800	2	1	2	0	0	0
70000802	1103003008	Yellow Star Beret	0	1000	604800	2	1	2	0	0	0
70000803	1103003008	Yellow Star Beret	0	1000	2592000	2	1	2	0	0	0
70000801	1103003008	Yellow Star Beret	0	1000	86400	2	1	2	0	0	0
70000903	1103003009	Cross Knife Beret	0	1000	2592000	2	1	2	0	0	0
70000902	1103003009	Cross Knife Beret	0	1000	604800	2	1	2	0	0	0
70000901	1103003009	Cross Knife Beret	0	1000	86400	2	1	2	0	0	0
70001002	1103003010	PBTN Beret	0	1000	604800	2	1	2	0	0	0
70001003	1103003010	PBTN Beret	0	1000	2592000	2	1	2	0	0	0
70001001	1103003010	PBTN Beret	0	1000	86400	2	1	2	0	0	0
70001101	1103003011	PB Black Beret	0	1000	86400	2	1	2	0	0	0
70001102	1103003011	PB Black Beret	0	1000	604800	2	1	2	0	0	0
70001103	1103003011	PB Black Beret	0	1000	2592000	2	1	2	0	0	0
70001202	1103003012	Boina da Turkia	0	1000	604800	2	1	2	0	0	0
70001201	1103003012	Boina da Turkia	0	1000	86400	2	1	2	0	0	0
70001203	1103003012	Boina da Turkia	0	1000	2592000	2	1	2	0	0	0
70001303	1103003013	Boina Kopassus	0	1000	2592000	2	1	2	0	0	0
70001301	1103003013	Boina Kopassus	0	1000	2592000	2	1	2	0	0	0
70001302	1103003013	Boina Kopassus	0	1000	604800	2	1	2	0	0	0
70001403	1103003014	Boina Skull	0	1000	2592000	2	1	2	0	0	0
70001401	1103003014	Boina Skull	0	1000	86400	2	1	2	0	0	0
70001402	1103003014	Boina Skull	0	1000	604800	2	1	2	0	0	0
70001502	1103003015	PBNC5 Beret	0	1000	604800	2	1	2	0	0	0
70001503	1103003015	PBNC5 Beret	0	1000	2592000	2	1	2	0	0	0
70001501	1103003015	PBNC5 Beret	0	1000	86400	2	1	2	0	0	0
70001603	1103003016	Boina E-General	0	1000	2592000	2	1	2	0	0	0
70001601	1103003016	Boina E-General	0	1000	86400	2	1	2	0	0	0
70001602	1103003016	Boina E-General	0	1000	604800	2	1	2	0	0	0
70001702	1103003017	Boina Brasil	0	1000	604800	2	1	2	0	0	0
70001701	1103003017	Boina Brasil	0	1000	86400	2	1	2	0	0	0
70001703	1103003017	Boina Brasil	0	1000	2592000	2	1	2	0	0	0
70001803	1103003018	Boina Vera Cruz 2016	0	1000	2592000	2	1	2	0	0	0
70001802	1103003018	Boina Vera Cruz 2016	0	1000	604800	2	1	2	0	0	0
70001801	1103003018	Boina Vera Cruz 2016	0	1000	86400	2	1	2	0	0	0
70004103	1103003034	BeretM1LGR4U	0	1000	2592000	2	1	2	1	0	0
70004101	1103003034	BeretM1LGR4U	0	1000	86400	2	1	2	1	0	0
70004102	1103003034	BeretM1LGR4U	0	1000	604800	2	1	2	1	0	0
80000301	1104003003	Camuflagem Tigre Russo	0	1000	2592000	2	1	2	0	0	0
80001103	1104003011	Pink Death Mask	0	1000	2592000	2	1	2	0	0	0
80001501	1104003015	Alienígina Azul Mask	0	1000	2592000	2	1	2	0	0	0
80003801	1104003038	Kazahstan Mask	0	1000	86400	2	1	2	0	0	0
80004001	1104003040	Besiktas FC Mask	0	1000	86400	2	1	2	0	0	0
80006001	1104003060	Latin FR Guyana	0	1000	2592000	2	1	2	0	0	0
80006301	1104003063	Latin Haiti	0	1000	86400	2	1	2	0	0	0
80006601	1104003066	Latin Suriname	0	1000	86400	2	1	2	0	0	0
80007801	1104003078	Máscara Chinesa Vermelha	0	1000	2592000	2	1	2	0	0	0
80008301	1104003099	Trex Headgear	0	1000	86400	2	1	2	0	0	0
80008701	1104003113	Gatotkaca Mask	0	1000	86400	2	1	2	0	0	0
80009701	1104003124	Black Snake Mask	0	1000	2592000	2	1	2	0	0	0
80010101	1104003128	Máscara PBNC4	0	1000	86400	2	1	2	0	0	0
80010201	1104003129	Máscara PBIC2013	0	1000	86400	2	1	2	0	0	0
80010401	1104003132	Máscara de Zumbi	0	1000	86400	2	1	2	0	0	0
80010901	1104003142	WC 2014 Argentina Mask	0	1000	86400	2	1	2	0	0	0
80011001	1104003143	WC 2014 Brazil Mask	0	1000	86400	2	1	2	0	0	0
80011101	1104003144	WC 2014 Chile Mask	0	1000	86400	2	1	2	0	0	0
80011201	1104003145	WC 2014 Colombia Mask	0	1000	86400	2	1	2	0	0	0
80011301	1104003146	WC 2014 Equador Mask	0	1000	86400	2	1	2	0	0	0
80011401	1104003147	WC 2014 England Mask	0	1000	86400	2	1	2	0	0	0
80011501	1104003148	WC 2014 France Mask	0	1000	86400	2	1	2	0	0	0
80011601	1104003149	WC 2014 Germany Mask	0	1000	86400	2	1	2	0	0	0
80011701	1104003150	WC 2014 Italy Mask	0	1000	86400	2	1	2	0	0	0
80011801	1104003151	WC 2014 Japan Mask	0	1000	86400	2	1	2	0	0	0
80011901	1104003152	WC 2014 Korea Mask	0	1000	86400	2	1	2	0	0	0
80012001	1104003153	WC 2014 Spain Mask	0	1000	86400	2	1	2	0	0	0
80012101	1104003154	WC 2014 U.S.A Mask	0	1000	86400	2	1	2	0	0	0
80012201	1104003155	WC 2014 Uruguay Mask	0	1000	2592000	2	1	2	0	0	0
80012301	1104003156	WC 2014 Honduras Mask	0	1000	86400	2	1	2	0	0	0
80012401	1104003157	WC 2014 Mexico Mask	0	1000	86400	2	1	2	0	0	0
80012501	1104003158	WC 2014 CostaRica Mask	0	1000	86400	2	1	2	0	0	0
80012701	1104003160	WC 2014 Greece Mask	0	1000	86400	2	1	2	0	0	0
80012801	1104003161	WC 2014 Netherlands Mask	0	1000	86400	2	1	2	0	0	0
80012901	1104003162	WC 2014 Belgium Mask	0	1000	86400	2	1	2	0	0	0
80013001	1104003163	WC 2014 Bosnia and Herzegovina Mask	0	1000	86400	2	1	2	0	0	0
80013101	1104003164	WC 2014 Switzerland Mask	0	1000	86400	2	1	2	0	0	0
80013201	1104003165	WC 2014 Croatia Mask	0	1000	86400	2	1	2	0	0	0
80013301	1104003166	WC 2014 Portugal Mask	0	1000	86400	2	1	2	0	0	0
80013401	1104003167	WC 2014 Ghana Mask	0	1000	86400	2	1	2	0	0	0
80013501	1104003168	WC 2014 Nigeria Mask	0	1000	86400	2	1	2	0	0	0
80013601	1104003169	WC 2014 Algeria Mask	0	1000	86400	2	1	2	0	0	0
80013701	1104003170	WC 2014 Cameroon Mask	0	1000	86400	2	1	2	0	0	0
80013801	1104003171	WC 2014 Cote d'Ivoire Mask	0	1000	86400	2	1	2	0	0	0
80013901	1104003172	WC 2014 Iran Mask	0	1000	86400	2	1	2	0	0	0
80014001	1104003173	WC 2014 Australia Mask	0	1000	86400	2	1	2	0	0	0
80014101	1104003174	WC 2014 Russia Mask	0	1000	86400	2	1	2	0	0	0
80014601	1104003179	Indonesia Mask (GW)	0	1000	2592000	2	1	2	0	0	0
80016101	1104003196	Máscara LionFlame	0	1000	86400	2	1	2	0	0	0
80016201	1104003197	Máscara Harimau	0	1000	86400	2	1	2	0	0	0
80016701	1104003204	Máscara PBTC2015	0	1000	2592000	2	1	2	0	0	0
80017501	1104003215	Máscara Spy-Normal	0	1000	2592000	2	1	2	0	0	0
80018901	1104003230	Máscara Tiger Deluxe	0	1000	86400	2	1	2	0	0	0
80019001	1104003231	Máscara Midnight2	0	1000	86400	2	1	2	0	0	0
80019101	1104003232	Máscara Skeleton	0	1000	86400	2	1	2	0	0	0
80019201	1104003233	Máscara E-Sports2	0	1000	86400	2	1	2	0	0	0
80019301	1104003234	Máscara Mummy	0	1000	86400	2	1	2	0	0	0
80019401	1104003235	ID 1stAnni Mask	0	1000	2592000	2	1	2	0	0	0
80019501	1104003236	Demonic Mask	0	1000	86400	2	1	2	0	0	0
80019601	1104003237	Máscara Blue Diamond	0	1000	86400	2	1	2	0	0	0
80019701	1104003238	Mask Puzzle	0	1000	86400	2	1	2	0	0	0
80019801	1104003241	Máscara Liberty	0	1000	86400	2	1	2	0	0	0
80019901	1104003242	Máscara Básica PBIC2016	0	1000	86400	2	1	2	0	0	0
80020001	1104003243	Máscara Premium PBIC2016	0	1000	86400	2	1	2	0	0	0
80020101	1104003244	Máscara PBTC2016	0	1000	86400	2	1	2	0	0	0
80020201	1104003245	Máscara PBST2016	0	1000	86400	2	1	2	0	0	0
80020301	1104003246	Meia-Máscara PBTC2016	0	1000	86400	2	1	2	0	0	0
80020401	1104003247	Máscara Furious	0	1000	86400	2	1	2	0	0	0
80020501	1104003248	Máscara Clown BR	0	1000	86400	2	1	2	0	0	0
80020601	1104003249	Meia-Máscara Skull	0	1000	86400	2	1	2	0	0	0
80020701	1104003250	Máscara Chain	0	1000	86400	2	1	2	0	0	0
80020901	1104003252	Máscara Halloween 2016	0	1000	86400	2	1	2	0	0	0
80021001	1104003253	Máscara NightHunter	0	1000	86400	2	1	2	0	0	0
80021101	1104003254	Máscara Eagle17	0	1000	86400	2	1	2	0	0	0
80021201	1104003256	Máscara Canary17	0	1000	86400	2	1	2	0	0	0
1104003312	1104003312	Mask Nevasca	0	1000	2592000	2	1	2	5	0	0
1104003313	1104003313	Zepetto Mask	0	1000	2592000	2	1	2	1	0	0
70000501	1105003001	Gorro do Papai Noel	0	1000	100	2	1	2	0	0	0
70000502	1105003001	Gorro do Papai Noel	0	1000	500	2	1	2	0	0	0
70002301	1105003002	ChineseHat	0	1000	86400	2	1	2	0	0	0
70002302	1105003002	ChineseHat	0	1000	604800	2	1	2	0	0	0
70002401	1105003003	Bandana Indonesia	0	1000	86400	2	1	2	0	0	0
70002402	1105003003	Bandana Indonesia	0	1000	604800	2	1	2	0	0	0
70002403	1105003003	Bandana Indonesia	0	1000	2592000	2	1	2	0	0	0
70000301	1105003004	Chapéu de Cowboy	0	1000	86400	2	1	2	0	0	0
70000302	1105003004	Chapéu de Cowboy	0	1000	604800	2	1	2	0	0	0
70000303	1105003004	Chapéu de Cowboy	0	1000	2592000	2	1	2	0	0	0
70002501	1105003005	Bandana (GW)	0	1000	86400	2	1	2	0	0	0
70002503	1105003005	Bandana (GW)	0	1000	2592000	2	1	2	0	0	0
70002502	1105003005	Bandana (GW)	0	1000	604800	2	1	2	0	0	0
70002602	1105003006	Fes Hat	0	1000	604800	2	1	2	0	0	0
70002603	1105003006	Fes Hat	0	1000	2592000	2	1	2	0	0	0
70002703	1105003007	ChineseHat2	0	1000	2592000	2	1	2	0	0	0
70002701	1105003007	ChineseHat2	0	1000	86400	2	1	2	0	0	0
70002702	1105003007	ChineseHat2	0	1000	604800	2	1	2	0	0	0
70002801	1105003008	Chapéu Kopassus	0	1000	2592000	2	1	2	0	0	0
70002802	1105003008	Chapéu Kopassus	0	1000	604800	2	1	2	0	0	0
70002803	1105003008	Chapéu Kopassus	0	1000	2592000	2	1	2	0	0	0
70000401	1105003009	Boné Pirocóptero	0	1000	100	2	1	2	0	0	0
70000402	1105003009	Boné Pirocóptero	0	1000	500	2	1	2	0	0	0
70002903	1105003010	Chapéu Cangaceiro	0	1000	2592000	2	1	2	0	0	0
70002902	1105003010	Chapéu Cangaceiro	0	1000	604800	2	1	2	0	0	0
70002901	1105003010	Chapéu Cangaceiro	0	1000	86400	2	1	2	0	0	0
70003002	1105003011	Soldier Day Hat(Paper Hat)	0	1000	604800	2	1	2	0	0	0
70003003	1105003011	Soldier Day Hat(Paper Hat)	0	1000	2592000	2	1	2	0	0	0
70003001	1105003011	Soldier Day Hat(Paper Hat)	0	1000	86400	2	1	2	0	0	0
130076076	1105003018	Mask Chicken	0	1000	2592000	2	1	2	1	0	0
90000100	1200002000	130% EXP UP [E]	0	1000	0	2	1	2	0	0	0
90000200	1200003000	150% EXP UP [E]	0	1000	0	2	1	2	0	0	0
90000300	1200004000	130% Point UP [E]	0	1000	2592000	2	1	2	0	0	0
90000400	1200006000	Nick Color[E]	0	1000	0	2	1	2	0	0	0
90000500	1200007000	Quick Respawn 30% [E]	0	1000	0	2	1	2	0	0	0
90000600	1200008000	Extended Magazine [E]	0	1000	0	2	1	2	0	0	0
90000700	1200009000	Fake Rank [E]	0	1000	0	2	1	2	0	0	0
90000800	1200010000	Apelido temporário 5D [E]	0	1000	0	2	1	2	0	0	0
90000900	1200011000	Fee Move, Free Pass [E]	0	1000	0	2	1	2	0	0	0
90001000	1200014000	Color Change Crosshair [E]	0	1000	0	2	1	2	0	0	0
90001100	1200017000	Quick Change Weapon [E]	0	1000	0	2	1	2	0	0	0
90001200	1200026000	Quick Change Reload [E]	0	1000	0	2	1	2	0	0	0
90001300	1200027000	MAX HP Up 10% [E]	0	1000	0	2	1	2	0	0	0
90001400	1200028000	Invincible +1 Sec. [E]	0	1000	0	2	1	2	0	0	0
90001500	1200029000	5% Defense Up [E]	0	1000	1	2	1	2	0	0	0
90001600	1200030000	Damage Up, Accuracy Down [E]	0	1000	0	2	1	2	0	0	0
90001700	1200031000	Munição Hollow Point [E]	0	1000	0	2	1	2	0	0	0
90001800	1200032000	FlashBang Protection [E]	0	1000	0	2	1	2	0	0	0
90001900	1200033000	C4 Speed Up [E]	0	1000	0	2	1	2	0	0	0
90002000	1200034000	Increase Grenade Slot +1 [E]	0	1000	0	2	1	2	0	0	0
90002100	1200035000	Damage & Accuracy Up, Move Down [E]	0	1000	0	2	1	2	0	0	0
90002200	1200036000	200% EXP Up [E]	0	1000	0	2	1	2	0	0	0
90002300	1200037000	200% Point Up [E]	0	1000	0	2	1	2	0	0	0
90002900	1200078000	Hollow Point Plus (Invisible) [E]	0	1000	1	2	1	2	0	0	0
90003000	1200079000	20% Defense Up [E]	0	1000	0	2	1	2	0	0	0
90003100	1200080000	Quick Respawn 100% [E]	0	1000	0	2	1	2	0	0	0
90003200	1200119000	150% Point Up [E]	0	1000	0	2	1	2	0	0	0
90003300	1200185000	Extended Magazine 10% [E]	0	1000	0	2	1	2	0	0	0
90003400	1200242000	Increase Smoke Slot +1 [E]	0	1000	0	2	1	2	0	0	0
90000101	1300002001	130% EXP UP	0	1000	1	1	1	2	0	0	0
90000102	1300002007	130% EXP UP	0	1000	1	1	1	2	0	0	0
90000103	1300002030	130% EXP UP	0	1000	1	2	1	2	0	0	0
90000201	1300003001	150% EXP UP	0	1000	1	2	1	2	0	0	0
90000202	1300003007	150% EXP UP	0	1000	1	2	1	2	0	0	0
90000203	1300003030	150% EXP UP	0	1000	1	2	1	2	0	0	0
90000301	1300004001	130% Point UP	0	1000	1	2	1	2	0	0	0
90000302	1300004007	130% Point UP	0	1000	1	2	1	2	0	0	0
90000303	1300004030	130% Point UP	0	1000	1	2	1	2	0	0	0
90000401	1300006001	Nick Color	0	1000	1	2	1	2	4	0	0
90000402	1300006007	Nick Color	0	1000	1	2	1	2	4	0	0
90000403	1300006030	Nick Color	0	1000	1	1	1	2	4	0	0
90000501	1300007001	Quick Respawn 30%	0	1000	1	2	1	2	0	0	0
90000502	1300007007	Quick Respawn 30%	0	1000	1	2	1	2	0	0	0
90000503	1300007030	Quick Respawn 30%	0	1000	1	2	1	2	0	0	0
90000601	1300008001	Extended Magazine	0	1000	1	2	1	2	0	0	0
90000602	1300008007	Extended Magazine	0	1000	1	2	1	2	0	0	0
90000603	1300008030	Extended Magazine	0	1000	1	2	1	2	0	0	0
90000701	1300009001	Fake Rank	0	1000	1	2	1	2	0	0	0
90000702	1300009007	Fake Rank	0	1000	1	2	1	2	0	0	0
90000703	1300009030	Fake Rank	0	1000	1	2	1	2	0	0	0
90000801	1300010001	Apelido temporário 5D	0	1000	1	2	1	2	0	0	0
90000802	1300010007	Apelido temporário 5D	0	1000	1	2	1	2	0	0	0
90000803	1300010030	Apelido temporário 5D	0	1000	1	2	1	2	0	0	0
90000901	1300011001	Fee Move, Free Pass	0	1000	1	2	1	2	0	0	0
90000902	1300011007	Fee Move, Free Pass	0	1000	1	2	1	2	0	0	0
90000903	1300011030	Fee Move, Free Pass	0	1000	1	2	1	2	0	0	0
90001001	1300014001	Color Change Crosshair	0	1000	1	2	1	2	0	0	0
90001002	1300014007	Color Change Crosshair	0	1000	1	2	1	2	0	0	0
90001003	1300014030	Color Change Crosshair	0	1000	1	2	1	2	0	0	0
90001101	1300026001	Quick Change Weapon	0	1000	1	2	1	2	0	0	0
90001102	1300026007	Quick Change Weapon	0	1000	1	2	1	2	0	0	0
90001103	1300026030	Quick Change Weapon	0	1000	1	2	1	2	0	0	0
110058230	1300026030	Quick Change Weapon[Beyond Set]	0	1000	1	2	1	2	0	0	0
90001201	1300027001	Quick Change Reload	0	1000	1	2	1	2	0	0	0
90001202	1300027007	Quick Change Reload	0	1000	1	2	1	2	0	0	0
90001203	1300027030	Quick Change Reload	0	1000	1	2	1	2	0	0	0
110017530	1300027030	Skull Package - Recarregamento	0	1000	1	0	1	2	0	0	0
90001301	1300028001	MAX HP Up 10%	0	1000	1	1	1	2	0	0	0
90001302	1300028007	MAX HP Up 10%	0	1000	1	2	1	2	0	0	0
90001303	1300028030	MAX HP Up 10%	0	1000	1	2	1	2	0	0	0
90001401	1300029001	Invincible +1 Sec.	0	1000	1	2	1	2	0	0	0
90001402	1300029007	Invincible +1 Sec.	0	1000	1	2	1	2	0	0	0
90001403	1300029030	Invincible +1 Sec.	0	1000	1	2	1	2	0	0	0
90001501	1300030001	5% Defense Up	0	1000	1	2	1	2	0	0	0
90001502	1300030007	5% Defense Up	0	1000	1	2	1	2	0	0	0
90001503	1300030030	5% Defense Up	0	1000	1	2	1	2	0	0	0
90001601	1300031001	Damage Up, Accuracy Down	0	1000	1	2	1	2	0	0	0
90001602	1300031007	Damage Up, Accuracy Down	0	1000	1	2	1	2	0	0	0
90001603	1300031030	Damage Up, Accuracy Down	0	1000	1	2	1	2	0	0	0
90001701	1300032001	Munição Hollow Point	0	1000	1	2	1	2	0	0	0
90001702	1300032007	Munição Hollow Point	0	1000	1	2	1	2	0	0	0
90001703	1300032030	Munição Hollow Point	0	1000	1	2	1	2	0	0	0
90001801	1300033001	FlashBang Protection	0	1000	1	2	1	2	0	0	0
90001802	1300033007	FlashBang Protection	0	1000	1	2	1	2	0	0	0
90001803	1300033030	FlashBang Protection	0	1000	1	2	1	2	0	0	0
90001901	1300034001	C4 Speed Up	0	1000	1	2	1	2	0	0	0
90001902	1300034007	C4 Speed Up	0	1000	1	1	1	2	0	0	0
90001903	1300034030	C4 Speed Up	0	1000	1	2	1	2	0	0	0
90002001	1300035001	Increase Grenade Slot +1	0	1000	1	2	1	2	0	0	0
90002002	1300035007	Increase Grenade Slot +1	0	1000	1	2	1	2	0	0	0
90002003	1300035030	Increase Grenade Slot +1	0	1000	1	2	1	2	0	0	0
90002101	1300036001	Damage & Accuracy Up, Move Down	0	1000	1	2	1	2	0	0	0
90002102	1300036007	Damage & Accuracy Up, Move Down	0	1000	1	2	1	2	0	0	0
90002103	1300036030	Damage & Accuracy Up, Move Down	0	1000	1	2	1	2	0	0	0
90002201	1300037001	200% EXP Up	0	1000	1	2	1	2	0	0	0
1300035030	1300035030	Increased Grenade Slot	0	1000	1	2	1	2	0	0	0
90002202	1300037007	200% EXP Up	0	1000	1	2	1	2	0	0	0
90002203	1300037030	200% EXP Up	0	1000	1	2	1	2	0	0	0
90002301	1300038001	200% Point Up	0	1000	1	2	1	2	0	0	0
90002302	1300038007	200% Point Up	0	1000	1	2	1	2	0	0	0
90002303	1300038030	200% Point Up	0	1000	1	2	1	2	0	0	0
90002401	1300040001	HP Up 5%	0	1000	1	2	1	2	0	0	0
90002402	1300040007	HP Up 5%	0	1000	1	2	1	2	0	0	0
90002403	1300040030	HP Up 5%	0	1000	1	2	1	2	0	0	0
90002501	1300044001	10% Defense Up	0	1000	1	2	1	2	0	0	0
90002502	1300044007	10% Defense Up	0	1000	1	2	1	2	0	0	0
90002503	1300044030	10% Defense Up	0	1000	1	2	1	2	0	0	0
90002701	1300065001	90% Defense Up	0	1000	1	2	1	2	0	0	2
90002702	1300065007	90% Defense Up	0	1000	1	2	1	2	0	0	2
90002703	1300065030	90% Defense Up	0	1000	1	2	1	2	0	0	2
90002901	1300078001	Hollow Point Plus	0	1000	1	2	1	2	0	0	0
90002902	1300078007	Hollow Point Plus	0	1000	1	2	1	2	0	0	0
90002903	1300078030	Hollow Point Plus	0	1000	1	2	1	2	0	0	0
90003001	1300079001	20% Defense Up	0	1000	1	2	1	2	0	0	0
90003002	1300079007	20% Defense Up	0	1000	1	2	1	2	0	0	0
90003003	1300079030	20% Defense Up	0	1000	1	2	1	2	0	0	0
90003101	1300080001	Quick Respawn 100%	0	1000	1	2	1	2	0	0	0
90003102	1300080007	Quick Respawn 100%	0	1000	1	2	1	2	0	0	0
90003103	1300080030	Quick Respawn 100%	0	1000	1	2	1	2	0	0	0
90003201	1300119001	150% Point Up	0	1000	1	2	1	2	0	0	0
90003202	1300119007	150% Point Up	0	1000	1	2	1	2	0	0	0
90003203	1300119030	150% Point Up	0	1000	1	2	1	2	0	0	0
90003301	1300185001	Extended Magazine 10%	0	1000	1	2	1	2	0	0	0
90003302	1300185007	Extended Magazine 10%	0	1000	1	2	1	2	0	0	0
90003303	1300185030	Extended Magazine 10%	0	1000	1	2	1	2	0	0	0
90003401	1300242001	Increase Smoke Slot +1	0	1000	1	2	1	2	0	0	0
90003402	1300242007	Increase Smoke Slot +1	0	1000	1	2	1	2	0	0	0
90003403	1300242030	Increase Smoke Slot +1	0	1000	1	2	1	2	0	0	0
90003601	1301047000	Change nickname	0	1000	1	2	1	2	1	0	0
90003701	1301048000	Reset Win / Losers	0	1000	1	2	1	2	0	0	0
90003801	1301049000	Reset Kill / Death	0	1000	1	2	1	2	0	0	0
90003901	1301050000	Reset Dropouts	0	1000	1	2	1	2	4	0	0
90004001	1301051000	Change clan name	0	1000	1	2	1	2	4	0	0
90004101	1301052000	Change clan badge	0	1000	1	2	1	2	0	0	0
90004201	1301053000	Reset Clan Win / Losers	0	1000	1	2	1	2	4	0	0
90004301	1301055000	More 50 Members in Guild	0	1000	1	2	1	2	0	0	0
90004401	1301058000	Random Box Bomb	0	1000	3	1	1	2	0	0	0
90004501	1301085000	PB Inspector	0	1000	1	2	1	2	0	0	0
90005501	1301118000	Gold 30000	0	1000	1	2	1	2	0	0	0
90005601	1301120000	Random Box Gold Bomb	0	1000	3	1	1	2	0	0	0
90010401	1302266000	RandomBox OA-7 Box_TAM	0	1000	3	2	1	2	0	0	0
90010501	1302379000	RandomBox Premium Knife Box_TAM	0	1000	3	1	1	2	0	0	0
100003805	1500000022	Point 22,000	0	1000	1	1	1	2	0	0	0
100003905	1500000024	Point 24,000	0	1000	1	1	1	2	0	0	0
100003405	1500000028	Point 28,000	0	1000	1	1	1	2	0	0	0
100003505	1500000032	Point 32,000	0	1000	1	1	1	2	0	0	0
100003605	1500000036	Point 36,000	0	1000	1	1	1	2	0	0	0
100002605	1500000045	Point 45,000	0	1000	2592000	2	1	2	0	0	0
100004301	1500000055	Point 55000	0	1000	1	1	1	2	0	0	0
110064507	1500000055	55k Points [Hot Star Set]	0	1000	1	2	1	2	0	0	0
100003705	1500000060	Point 70,000	0	1000	1	1	1	2	0	0	0
110036830	1500000100	100k[Special Force Combo Set]	0	1000	1	0	1	2	0	0	0
110058330	1500000100	100k[General Combo Set]	0	1000	1	0	1	2	0	0	0
100004201	1500001000	Point 100	0	1000	1	1	1	2	0	0	0
100004005	1500002003	Point 3,200	0	1000	1	1	1	2	0	0	0
100003205	1501000000	Point 1,000,00	0	1000	1	2	1	2	0	0	0
100003305	1503000000	Point 3,000,00	0	1000	1	1	1	2	0	0	0
100000105	1508000000	Point 8,000,00	0	1000	1	2	1	2	0	0	0
1300242030	1300242030	Special Weapon Slot	0	1000	1	2	1	2	0	0	0
1300170030	1300170030	FULL METAL JACKET	0	1000	1	2	1	2	0	0	0
30007501	702001159	Fang Blade Steel	0	1000	100	1	0	0	1	0	0
10053201	300005185	Cheytac M200 Dark Steel	0	1000	100	1	0	0	1	0	0
10017801	100003295	Aug A3 Dark Steel	0	1000	100	1	0	0	1	0	0
20005801	601002098	Python Dark Steel	0	1000	100	1	0	0	1	0	0
10036901	200004318	Kriss S.V Dark Steel	0	1000	100	1	0	0	1	0	0
10037001	200004320	P90 Ext. Dark Steel	0	1000	100	1	0	0	1	0	0
10061401	400006080	M1887 Dark Steel	0	1000	100	1	0	0	1	0	0
1015	1001001295	Viper Red Special Force	0	1000	2592000	2	1	2	0	0	0
10049602	300005148	Cheytac M200 Sakura	0	1000	604800	2	1	2	5	0	0
10049603	300005148	Cheytac M200 Sakura	0	1000	2592000	2	1	2	5	0	0
10049601	300005148	Cheytac M200 Sakura	0	1000	86400	2	1	2	5	0	0
10016101	100003277	AUG A3 Blue Diamond	0	1000	2592000	2	1	2	2	0	0
1017	300005199	CheyTec M200 Beyond	1	1	2592000	2	1	2	0	0	0
1002	1104003079	Mask Reinforce Black	0	1000	2592000	2	1	2	0	0	0
1032	1104003270	Mask Black Skull	0	1000	2592000	2	1	2	0	0	0
1048	200004436	APC9 G.	0	1000	2592000	2	1	2	0	0	0
1019	1104003273	Mask New Generation	0	1000	2592000	2	1	2	0	0	0
1021	1001002287	General Hide	0	1000	2592000	2	1	2	0	0	0
1016	1001002294	Hide Special Force	1	1	2592000	2	1	2	0	0	0
1049	1104003294	MASK BOLT	0	1000	2592000	2	1	2	0	0	0
1020	1001001286	General Viper	0	1000	2592000	2	1	2	0	0	0
1044	1104003251	Phantom Mask	0	1000	2592000	2	1	2	0	0	0
110067230	100003340	Msbs Gold	0	1000	2592000	2	1	2	0	0	0
110016430	1104003101	Mask Frail Skull Gold	0	1000	2592000	2	1	2	0	0	0
1300034030	1300034030	C4 Speed Kit	0	1000	1	2	1	2	0	0	0
1001001283	1001001283	Pirate Tarantula	0	1000	2592000	2	1	2	0	0	0
1104003012	1104003012	Golden Smile Mask	0	1000	2592000	2	1	2	0	0	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3688.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3713.dat                                                                                            0000600 0004000 0002000 00000042172 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10020501	100003091	Famas G2 Commando PBTN	0	0	2592000	2	1	2	3	0	0
10010001	100003365	AUG_A3_BOLT	0	0	2592000	2	1	2	2	0	0
10010101	100003366	SC_2010_BOLT	0	0	604800	2	1	2	2	0	0
100003447	100003447	AUG HOLI	0	950	432000	2	1	2	2	0	2
100003448	100003448	SC 2010 HOLI	0	950	432000	2	1	2	2	0	2
10064201	100003453	AUG A3 Maze	0	0	86400	2	1	1	4	0	2
10005201	100003459	AUG A3 White 18	0	0	86400	2	1	2	0	0	0
0	100003460	P90 White Rabbit	0	0	0	1	1	2	3	0	0
10004601	100003470	AUG A3 ARCADE	0	0	86400	2	1	2	0	0	0
20008701	100003474	AUG A3 BRAZUCA3	0	200	86400	2	1	2	1	0	0
30002001	100003475	SC 2010 BRAZUCA3	0	950	86400	2	1	2	1	0	0
100003479	100003479	AUG A3 RAVEN	0	1900	432000	2	1	2	2	0	0
10025501	200004081	MP7 GRS	0	0	86400	2	1	2	0	0	0
200004389	200004389	KRIss EV CHICANO	0	0	0	0	0	0	0	0	0
10036602	200004405	OA93_MNB3	0	2130	604800	2	1	2	0	0	2
200004596	200004596	OA HOLI	0	1100	432000	2	1	2	2	0	2
10064301	200004603	KRISSSUPERV Maze	0	0	86400	2	1	1	4	0	2
10064401	200004605	OA93 Maze	0	0	86400	2	1	1	4	0	2
10038201	200004623	P90 Ext White 18 	0	760	86400	2	1	2	4	0	0
50000801	200004654	P90 ext BRAZUCA3	0	950	86400	2	1	2	1	0	0
200004657	200004657	OA 93 RAVEN	0	2000	432000	2	1	2	2	0	0
200004659	200004659	KRISS SV RAVEN	0	1800	432000	2	1	2	2	0	0
200004661	200004661	P90 RAVEN	0	1600	432000	2	1	2	2	0	0
10015802	200018115	DUALSMG_KRISSSUPERV_ICE	0	0	86400	2	1	2	2	0	0
10043701	300005026	L115A1 Black	3100	0	86400	2	1	2	0	0	2
10044201	300005050	L115A1 PBTN	0	310	86400	2	1	2	0	0	2
10032803	300005194	CHEYTAC_M200_ICE	0	0	2592000	2	1	2	0	0	0
300005298	300005298	tactilite holi	0	1150	432000	2	1	2	2	0	2
300005299	300005299	cheytac holi	0	1150	432000	2	1	2	2	0	2
10064501	300005303	CHEYTAC M200 Maze	0	0	86400	2	1	1	4	0	2
100003437	300005320	CHEYTAC M200 ARCADE	0	950	432000	2	1	2	1	0	2
100003438	300005321	TACTILITE T2 ARCADE	0	950	432000	2	1	2	1	0	2
10057401	300005326	CHEYTAC BRAZUCA3	0	950	86400	2	1	2	1	0	0
10045501	300005327	TACTILITE BRAZUCA3	0	950	86400	2	1	2	1	0	0
300005331	300005331	TACTILITE RAVEN	0	2000	432000	2	1	2	2	0	0
10015702	400006088	ZOMBIE_SLAYER_ICE	0	0	86400	2	1	2	2	0	0
10064602	400006145	ZOMBIE SLAYER Maze	0	0	604800	2	1	1	4	0	2
200004571	400006152	M1887 ARCADE	0	840	432000	2	1	2	1	0	2
601002147	601002147	python holi	0	0	0	0	0	0	0	0	0
10054201	601002150	COLTWhite 18 	0	310	86400	2	1	2	4	0	0
200004572	601014028	SCORPION VZ61 ARCADE	0	1100	432000	2	1	2	1	0	2
10034002	702001168	CHICKEN_HAMMER	0	0	604800	2	1	2	0	0	0
10034402	702001198	KERIS_PBNC2017	0	0	604800	2	1	2	0	0	0
702001229	702001229	machete holi	0	840	432000	2	1	2	2	0	2
10064303	702001233	FANGBLADE Maze	0	0	2592000	2	1	1	4	0	2
20008301	702001237	KNIFE White 18	0	500	86400	2	1	2	4	0	0
200004574	702001243	KNIFE GH5007 ARCADE	0	1100	432000	2	1	2	1	0	2
70001501	702001246	Karambit BRAZUCA3	0	950	86400	2	1	2	1	0	0
702001249	702001249	KARAMBIT RAVEN	0	2000	432000	2	1	2	2	0	0
30010401	803007078	GRENADE_K_413_MAZE	0	250	86400	2	1	1	1	0	2
70003401	1103003001	Assault Beret	0	10000	86400	2	1	2	0	0	2
70003601	1103003002	Sniper Beret	0	10000	86400	2	1	2	0	0	2
70003701	1103003003	Shoting Beret	0	10000	86400	2	1	2	0	0	2
70003801	1103003004	SMG Beret	0	10000	86400	2	1	2	0	0	2
70003901	1103003005	Shotgun Beret	0	10000	86400	2	1	2	0	0	2
70004001	1103003031	Beret FireDragon	0	230	86400	2	1	1	0	0	2
80000101	1104003001	MÃ¡scara branca	2500	0	86400	2	1	2	0	0	2
80000201	1104003002	MÃ¡scara preta	2500	0	86400	2	1	2	0	0	2
80000401	1104003004	Camuflagem Naval	2500	0	86400	2	1	2	0	0	2
80000501	1104003005	Camuflagem Francesa	2500	0	86400	2	1	2	0	0	2
80000601	1104003006	MÃ¡scara de Fogo	2500	0	86400	2	1	2	0	0	2
80000701	1104003007	MÃ¡scara duas cores	2500	0	86400	2	1	2	0	0	2
80000801	1104003008	Hockey Mask	2500	0	86400	2	1	2	0	0	2
80000901	1104003009	No alvo	1	0	86400	2	1	2	0	0	2
80001001	1104003010	AbÃ³bora de Halloween	0	250	86400	2	1	2	0	0	2
80001301	1104003013	CrÃ¢nio Mask	0	300	86400	2	1	2	0	0	0
80001401	1104003014	PalhaÃ§o Assassino Mask	0	300	86400	2	1	2	0	0	0
80001601	1104003016	AlienÃ­gina Vermelho Mask	0	250	86400	2	1	2	0	0	2
80001701	1104003017	MÃ¡scara TemplÃ¡ria Mask	0	250	86400	2	1	2	0	0	2
80001801	1104003018	Jason Mask	0	250	86400	2	1	2	0	0	2
80001901	1104003019	Panda Mask	0	250	86400	2	1	2	0	0	2
80002001	1104003020	MÃ¡scara de PÃ¡scoa Mask	0	250	86400	2	1	2	0	0	2
80002101	1104003021	Death Mask	0	250	86400	2	1	2	0	0	2
80002201	1104003022	MÃ¡scara Argentina	0	250	86400	2	1	2	0	0	2
80002301	1104003023	MÃ¡scara Brasil	0	250	86400	2	1	2	0	0	2
80002401	1104003024	MÃ¡scara Inglaterra	0	250	86400	2	1	2	0	0	2
80002501	1104003025	MÃ¡scara FranÃ§a	0	250	86400	2	1	2	0	0	2
80002601	1104003026	MÃ¡scara Alemanha	0	250	86400	2	1	2	0	0	2
80002701	1104003027	MÃ¡scara ItÃ¡lia	0	250	86400	2	1	2	0	0	2
80002801	1104003028	NoName	0	250	86400	2	1	2	0	0	2
80003001	1104003030	MÃ¡scara CorÃ©ia	0	250	86400	2	1	2	0	0	2
80003101	1104003031	MÃ¡scara Espanha	0	250	86400	2	1	2	0	0	2
80003201	1104003032	Tigre Mask	0	250	86400	2	1	2	0	0	2
80003301	1104003033	Jester_BW Mask	0	250	86400	2	1	2	0	0	2
80003401	1104003034	Wrestling Mask	0	250	86400	2	1	2	0	0	2
80003501	1104003035	MÃ¡scara Russia	0	250	86400	2	1	2	0	0	2
80003601	1104003036	Ukraine Mask	0	250	86400	2	1	2	0	0	2
80003701	1104003037	Belorus Mask	0	250	86400	2	1	2	0	0	2
80003901	1104003039	MÃ¡scara DemÃ´nio Vermelho	0	250	86400	2	1	2	0	0	2
80004101	1104003041	Bursapor FC Mask	0	250	86400	2	1	2	0	0	2
80004201	1104003042	Fenerbahce FC Mask	0	250	86400	2	1	2	0	0	2
80004301	1104003043	Galatasaray FC Mask	0	250	86400	2	1	2	0	0	2
80004401	1104003044	Trabzonspor FC Mask	0	250	86400	2	1	2	0	0	2
80004501	1104003045	MÃ¡scara CrÃ¢nio FrÃ¡gil	0	250	86400	2	1	2	0	0	2
80004601	1104003046	Latin Bahamas	0	250	86400	2	1	2	0	0	2
80004701	1104003047	Latin Bolivia	0	250	86400	2	1	2	0	0	2
80004801	1104003048	Latin Cayman	0	250	86400	2	1	2	0	0	2
80004901	1104003049	Latin Chile	0	250	86400	2	1	2	0	0	2
80005001	1104003050	Latin Colombia	0	250	86400	2	1	2	0	0	2
80005101	1104003051	Latin Costarica	0	250	86400	2	1	2	0	0	2
80005201	1104003052	Latin Honduras	0	250	86400	2	1	2	0	0	2
80005301	1104003053	Latin Jamaica	0	250	86400	2	1	2	0	0	2
80005401	1104003054	Latin Mexico	0	250	86400	2	1	2	0	0	2
80005501	1104003055	Latin Nicaragua	0	250	86400	2	1	2	0	0	2
80005601	1104003056	Latin Panama	0	250	86400	2	1	2	0	0	2
80005701	1104003057	Latin Paraguay	0	250	86400	2	1	2	0	0	2
80005801	1104003058	Latin Dominican	0	250	86400	2	1	2	0	0	2
80005901	1104003059	Latin Equador	0	250	86400	2	1	2	0	0	2
80006101	1104003061	Latin Guatemala	0	250	86400	2	1	2	0	0	2
80006201	1104003062	Latin Guyana	0	250	86400	2	1	2	0	0	2
80006401	1104003064	Latin Peru	0	250	86400	2	1	2	0	0	2
80006501	1104003065	Latin Puertorico	0	250	86400	2	1	2	0	0	2
80006701	1104003067	Latin Trinidad	0	250	86400	2	1	2	0	0	2
80006801	1104003068	Latin Uruguay	0	250	86400	2	1	2	0	0	2
80006901	1104003069	Latin Venezuela	0	250	86400	2	1	2	0	0	2
80007001	1104003070	Latin Argentina	0	250	86400	2	1	2	0	0	2
80007101	1104003071	CrÃ¢nio de Dinossauro	0	250	86400	2	1	2	0	0	2
80007201	1104003072	Raptr Mask	0	250	86400	2	1	2	0	0	2
80007301	1104003073	Canada Mask	0	250	86400	2	1	2	0	0	2
80007401	1104003074	MÃ¡scara Inglaterra	0	250	86400	2	1	2	0	0	2
80007501	1104003075	MÃ¡scara EUA	0	250	86400	2	1	2	0	0	2
80007601	1104003076	Indonesia Mask	0	250	86400	2	1	2	0	0	2
80007701	1104003077	MÃ¡scara PBTN	0	250	86400	2	1	2	0	0	2
80008001	1104003096	Smile Cartoon Mask Set (Troll Meme)	0	250	86400	2	1	2	0	0	2
80008101	1104003097	Angry Cartoon Mask Set (Respect Meme)	0	250	86400	2	1	2	0	0	2
80008201	1104003098	Crazy Cartoon Mask Set (Ffuu Meme)	0	250	86400	2	1	2	0	0	2
80008401	1104003100	Trojan Mask	0	250	86400	2	1	2	0	0	2
80008601	1104003107	MÃ¡scara PBIC2012	0	250	86400	2	1	2	0	0	2
80008801	1104003114	Blue tiger mask set of Russian army	0	250	86400	2	1	2	0	0	2
80008901	1104003115	Mask set of Korea marine corps	0	250	86400	2	1	2	0	0	2
80009001	1104003116	Desert mask set of France army	0	250	86400	2	1	2	0	0	2
80009101	1104003117	Gatotkaca Gold Mask	0	250	86400	2	1	2	0	0	2
80009201	1104003118	PBSC Mask	0	250	86400	2	1	2	0	0	2
80009401	1104003121	Garena Gold Mask	0	250	86400	2	1	2	0	0	2
80009501	1104003122	Garena Red Mask	0	250	86400	2	1	2	0	0	2
80009601	1104003123	Garena White Mask	0	250	86400	2	1	2	4	0	2
80009801	1104003125	Egg Tarantula Mask	0	250	86400	2	1	2	0	0	2
80009901	1104003126	GSL Mask	0	250	86400	2	1	2	0	0	2
80010001	1104003127	Egg RedBulls Mask	0	250	86400	2	1	2	0	0	2
80010301	1104003131	MÃ¡scara de Ovelha	0	250	86400	2	1	2	0	0	2
80010501	1104003134	LATIN3 Mask	0	3600	86400	2	1	2	1	0	2
80010601	1104003135	LATIN3 Premium Mask	0	2300	432000	2	1	2	1	0	0
80010701	1104003136	Unicorn Mask	0	250	86400	2	1	2	0	0	2
80010801	1104003137	TH 1st Anniversary Mask	0	250	86400	2	1	2	0	0	2
80012601	1104003159	GSL 2014 Mask	0	250	86400	2	1	2	0	0	2
80014201	1104003176	Egg KeenEyes Mask	0	250	86400	2	1	2	0	0	2
80014401	1104003177	Mask Midnight	0	250	86400	2	1	2	0	0	2
80014501	1104003178	Brazuca Mask	0	250	86400	2	1	2	0	0	2
80014701	1104003180	MÃ¡scara Inferno	0	250	86400	2	1	2	0	0	2
80014801	1104003181	MÃ¡scara Inferno Premium	0	250	86400	2	1	2	0	0	2
80014901	1104003182	MÃ¡scara PBIC2014	0	250	86400	2	1	2	0	0	2
80015001	1104003183	MÃ¡scara PBSC2013 NonLogo	0	250	86400	2	1	2	0	0	2
80015101	1104003186	MÃ¡scara Midnight	0	250	86400	2	1	2	0	0	2
80015201	1104003187	MÃ¡scara Latin4	0	250	86400	2	1	2	0	0	2
80015301	1104003188	MÃ¡scara Latin4 Premium	0	250	86400	2	1	2	0	0	2
80015401	1104003189	MÃ¡scara GRS2	0	250	86400	2	1	2	0	0	2
80015501	1104003190	MÃ¡scara GSL2015	0	250	86400	2	1	2	0	0	2
80015601	1104003191	MÃ¡scara Ongame	0	250	86400	2	1	2	0	0	2
80015701	1104003192	MÃ¡scara Ongame Premium	0	250	86400	2	1	2	0	0	2
80015801	1104003193	MÃ¡scara D-Fox Egg	0	250	86400	2	1	2	0	0	2
80015901	1104003194	MÃ¡scara Viper Egg	0	250	86400	2	1	2	0	0	2
80016001	1104003195	MÃ¡scara Songkran2015	0	250	86400	2	1	2	0	0	2
80016301	1104003199	MÃ¡scara 4Game	0	250	86400	2	1	2	0	0	2
80016401	1104003200	MÃ¡scara 4Game SE	0	250	86400	2	1	2	0	0	2
80016501	1104003201	MÃ¡scara Madness	0	250	86400	2	1	2	0	0	2
80016601	1104003202	MÃ¡scara Madness Premium	0	250	86400	2	1	2	0	0	2
80016801	1104003205	Meia-MÃ¡scara PBTC2015	0	250	86400	2	1	2	0	0	2
80016901	1104003206	MÃ¡scara Mech	0	250	86400	2	1	2	0	0	2
80017001	1104003209	Meia-MÃ¡scara PBIC2015	0	250	86400	2	1	2	0	0	2
80017101	1104003210	MÃ¡scara PBIC2015	0	250	86400	2	1	2	0	0	2
80017201	1104003211	MÃ¡scara Red Cross	0	250	86400	2	1	2	0	0	2
80017301	1104003213	MÃ¡scara Cobra	0	250	86400	2	1	2	0	0	2
80017401	1104003214	MÃ¡scara Halloween	0	250	86400	2	1	2	0	0	2
80017601	1104003216	MÃ¡scara Latin5 PREMIUM	0	250	86400	2	1	2	0	0	2
80017701	1104003217	MÃ¡scara Latin5	0	250	86400	2	1	2	0	0	2
80017801	1104003218	MÃ¡scara Obsidian	0	250	86400	2	1	2	0	0	2
80017901	1104003219	MÃ¡scara Spy-Deluxe	0	250	86400	2	1	2	0	0	2
80018001	1104003220	MÃ¡scara DFN	0	250	86400	2	1	2	0	0	2
80018101	1104003222	MÃ¡scara Arena-Normal	0	250	86400	2	1	2	0	0	2
80018201	1104003223	MÃ¡scara Arena-Deluxe	0	250	86400	2	1	2	0	0	2
80018301	1104003224	MÃ¡scara do Cupido	0	250	86400	2	1	2	0	0	2
80018401	1104003225	MÃ¡scara Serpent	0	250	86400	2	1	2	0	0	2
80018501	1104003226	MÃ¡scara Songkran2016	0	250	86400	2	1	2	0	0	2
80018701	1104003228	MÃ¡scara PBGC	0	250	86400	2	1	2	0	0	2
80018801	1104003229	MÃ¡scara GSL2016	0	250	86400	2	1	2	0	0	2
70003101	1105003012	ChapÃ©u da IndependÃªncia	0	420	86400	2	1	2	0	0	2
70003201	1105003013	ChapÃ©u Camo Soldier	0	470	86400	2	1	2	0	0	2
70003301	1105003014	ChapÃ©u de Cowboy (GM)	0	0	86400	2	1	2	0	0	2
70003501	1105003016	MÃ¡scara do Macaco	0	470	86400	2	1	2	0	0	2
90002400	1200038000	HP Up 5% [E]	0	0	0	2	1	2	0	0	2
90002500	1200040000	10% Defense Up [E]	0	0	0	2	1	2	0	0	2
90002600	1200044000	Quick Respawn 50% [E]	0	0	0	2	1	2	0	0	2
90002700	1200064000	90% Defense Up [E]	0	0	0	2	1	2	0	0	2
90002800	1200065000	Quick Respawn 20% [E]	0	0	1	1	1	2	4	0	2
90002601	1300064001	Quick Respawn 50%	0	250	1	1	1	2	0	0	0
90002602	1300064007	Quick Respawn 50%	0	1000	1	1	1	2	0	0	0
90002603	1300064030	Quick Respawn 50%	0	3500	1	1	1	2	0	0	0
90002801	1300077001	Quick Respawn 20%	500	0	1	1	1	2	0	0	2
90002802	1300077007	Quick Respawn 20%	2250	0	1	1	1	2	0	0	2
90002803	1300077030	Quick Respawn 20%	5000	0	1	1	1	2	0	0	2
90003501	1301045000	Random Box of Weapons 2	0	2720	3	1	1	2	1	0	2
90004601	1301090000	Dual Uzi Supply Kit 1d	0	1955	3	1	1	2	1	0	2
90004701	1301097000	Famas G2 Supply Kit 1d	0	2125	3	1	1	2	1	0	2
90004801	1301098000	Dual Uzi Supply Kit 3d	0	2210	3	1	1	2	1	0	2
90004901	1301099000	Dual Uzi Supply Kit 7d	0	2380	3	1	1	2	1	0	2
90005001	1301100000	Dual Uzi Supply Kit 30d	0	2635	3	1	1	2	1	0	2
90005101	1301102000	Famas G2 Supply Kit 3d	0	2295	3	1	1	2	0	0	2
90005201	1301103000	Famas G2 Supply Kit 7d	0	2550	3	1	1	2	0	0	2
90005301	1301104000	Famas G2 Supply Kit 30d	0	2805	3	1	1	2	0	0	2
90005401	1301108000	Random Box of Cheguevara	0	3060	3	1	1	2	4	0	0
90005701	1301121000	Random Box Gold Bomb Premium	0	2805	3	1	1	2	1	0	2
90005801	1301152000	Random Box Beast	0	2600	3	1	1	2	2	0	0
90005901	1301153000	Random Box Sakura	0	1500	5	1	1	2	2	0	0
90006001	1301154000	Random Box Serpent	0	1500	3	1	1	2	2	0	0
90010001	1301180000	RandomBox Sniper 7D_TAM	0	2550	3	1	1	2	0	0	2
90006101	1301202000	Random Box Silence	0	2635	3	1	1	2	4	0	0
90006201	1301203000	Random Box E-Sport2	0	2550	3	1	1	1	0	0	2
90010101	1301204000	RandomBox Platinum Box_TAM	0	2550	3	1	1	2	0	0	2
90006301	1301210000	Random Box PBWC	0	2550	3	1	1	2	0	0	2
90006401	1301211000	Random Box Mummy	0	2465	3	1	1	2	4	0	0
90006501	1301212000	Random Box Dragon	0	2465	3	1	1	2	4	0	0
90006601	1301240000	Random Box Cupid	0	2800	3	1	1	2	1	0	0
90006701	1301241000	Random Box Demonic	0	2465	3	1	1	2	2	0	2
90010201	1301250000	RandomBox Premium AUG Box_TAM	0	2550	3	1	1	2	0	0	2
90006801	1301298000	Random Box Alien	0	1500	3	1	1	2	2	0	0
90006901	1301299000	Random Box Blue Diamond	0	2720	3	1	1	2	1	0	0
90007001	1301300000	Random Box Dolphin	0	1200	5	1	1	2	2	0	2
90007101	1301305000	Random Box GSL2016	0	2550	3	1	1	2	2	0	0
90007201	1301306000	Random Box Newborn2016	0	2720	3	1	1	2	4	0	0
90007301	1301326000	Random Box DarkSteel	0	2465	3	1	1	2	4	0	0
90007401	1301335000	Random Box Supreme	0	2550	3	1	1	2	0	0	0
90007501	1301336000	Random Box Special PBIC	0	1500	3	1	1	2	4	0	2
90007601	1301507000	Random Box of Masks	0	1700	3	1	1	2	0	0	2
90007701	1301527000	Random Box Gold	0	1700	3	1	1	2	0	0	2
10036002	1301564000	caixa Inferno	0	2130	604800	2	1	2	0	0	0
10035502	1301584000	M1887 Lion Heart RandomBox	0	2300	604800	2	1	2	0	0	0
10035802	1301587000	X-Mas SupplyKit	0	2480	604800	2	1	2	0	0	0
90007901	1301619000	Random Box Mix PBIC	0	1500	5	1	1	2	0	0	2
90008001	1301646000	Random Box Elite Pro	0	3060	3	1	1	2	0	0	2
90008101	1301647000	Random Box AK Elite	0	2465	3	1	1	2	0	0	2
90008201	1301648000	Random Box Dragunov Elite	0	2465	3	1	1	2	0	0	2
90008301	1301649000	Random Box G36C Elite	0	2720	3	1	1	2	0	0	2
90008401	1301650000	Random Box M4A1 Elite	0	2465	3	1	1	2	0	0	2
90008501	1301651000	Random Box PSG1 Elite	0	2635	3	1	1	2	0	0	2
90008601	1301652000	Random Box SPAS-15 Elite	0	2720	3	1	1	2	0	0	2
90008701	1301653000	Random Box SVU Elite	0	2465	3	1	1	2	0	0	2
90008801	1301654000	Random Box VSK94 Elite	0	2210	3	1	1	2	0	0	2
90008901	1301663000	Random Box Every Day	0	2210	3	1	1	2	0	0	2
90009001	1301664000	Random Box Everyday Login Plus	0	2550	3	1	1	2	0	0	2
90009101	1301794000	Random Box PBIC2015	0	2380	3	1	1	2	3	0	0
90009201	1301852000	Random Box Character A	0	3100	3	1	1	2	0	0	0
90009301	1301853000	Random Box Character B	0	3400	3	1	1	2	0	0	0
90009401	1301854000	Random Box Camo Soldier	0	1500	3	1	1	2	1	0	2
90009501	1301895000	Random Box Monkey	0	1500	3	1	1	2	2	0	2
90009601	1301901000	Random Box Horror	0	2465	3	1	1	2	4	0	0
90009701	1302014000	Random Box Woody A	0	2400	3	1	1	2	1	0	2
90009801	1302016000	Random Box Woody B	0	2600	3	1	1	2	1	0	2
90009901	1302017000	Random Box Halloween 2016	0	1500	3	1	1	2	4	0	0
90010301	1302122000	RandomBox Premium Cheytac Box_TAM	0	2550	3	1	1	2	0	0	2
10010103	1302183000	Aug A3 Summer Box	0	0	1	2	1	2	0	0	0
100000205	1500000001	Point 1,000	1	0	1	1	1	2	0	0	2
100000305	1500000002	Point 2,000	1	0	1	1	1	2	0	0	2
100000405	1500000003	Point 3,000	1	0	1	1	1	2	0	0	2
100000505	1500000004	Point 4,000	1	0	1	1	1	2	0	0	2
100000605	1500000005	Point 5,000	1	0	1	1	1	2	0	0	2
100000705	1500000006	Point 6,000	1	0	1	1	1	2	0	0	2
100000805	1500000007	Point 7,000	1	0	1	1	1	2	0	0	2
100000905	1500000008	Point 8,000	1	0	1	1	1	2	0	0	2
100001005	1500000009	Point 9,000	1	0	1	1	1	2	0	0	2
100001105	1500000010	Point 10,000	1	0	1	1	1	2	0	0	2
100001205	1500000011	Point 11,000	1	0	1	1	1	2	0	0	2
100001305	1500000012	Point 12,000	1	0	1	1	1	2	0	0	2
100001405	1500000013	Point 13,000	1	0	1	1	1	2	0	0	2
100001505	1500000014	Point 14,000	1	0	1	1	1	2	0	0	2
100001605	1500000015	Point 15,000	1	0	1	1	1	2	0	0	4
100001705	1500000016	Point 16,000	1	0	1	1	1	2	0	0	2
100001805	1500000017	Point 17,000	1	0	1	1	1	2	0	0	2
100001905	1500000018	Point 18,000	1	0	1	1	1	2	0	0	2
100002005	1500000019	Point 19,000	1	0	1	1	1	2	0	0	2
100002105	1500000020	Point 20,000	1	0	1	1	1	2	0	0	2
100002205	1500000025	Point 25,000	1	0	1	1	1	2	0	0	2
100002305	1500000030	Point 30,000	1	0	1	1	1	2	0	0	2
100002405	1500000035	Point 35,000	1	0	1	1	1	2	0	0	2
100002505	1500000040	Point 40,000	1	0	1	1	1	2	0	0	2
100002705	1500000050	Point 50,000	1	0	1	1	1	2	0	0	2
100002905	1500000200	Point 200,000	1	0	1	1	1	2	0	0	2
100003005	1500000300	Point 300,000	1	0	1	1	1	2	0	0	2
100003105	1500000500	Point 500,000	1	0	1	1	1	2	0	0	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                      3689.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3690.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3691.dat                                                                                            0000600 0004000 0002000 00000000055 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	43	darkblowpbreborn	1	1	0	127.0.0.1	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3692.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3693.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3694.dat                                                                                            0000600 0004000 0002000 00000000055 14271176511 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0	1	1	999999999	999999999	999999999	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3695.dat                                                                                            0000600 0004000 0002000 00000000111 14271176511 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	DarkblowPB Battlepass	0	-	1	-	-
2	DarkblowPB Battlepass	1	-	1	-	-
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                       3696.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3697.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3698.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3699.dat                                                                                            0000600 0004000 0002000 00000000114 14271176511 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        11	300005232	Barrett M82A1 Premium	2592000	3000	BARRET_PREMIUM.png	1	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                    3700.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3701.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3702.dat                                                                                            0000600 0004000 0002000 00000002463 14271176511 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Windows 10	Chrome 102.0.5005.134	::1	Maintenance	\N	1	30-07-2022 04:19:26
Windows 10	Chrome 102.0.5005.134	::1	Inventory	\N	22	30-07-2022 03:25:12
Windows 10	Chrome 102.0.5005.134	::1	Webshop	\N	8	30-07-2022 04:12:51
Windows 10	Chrome 102.0.5005.134	::1	Trade Market	\N	7	30-07-2022 04:13:03
Windows 10	Chrome 102.0.5005.134	::1	Clan Rank	\N	2	30-07-2022 04:13:27
Windows 10	Chrome 102.0.5005.134	::1	Download	\N	3	30-07-2022 04:13:29
Windows 10	Chrome 102.0.5005.134	::1	Logout	\N	5	30-07-2022 04:33:24
Windows 10	Chrome 102.0.5005.134	::1	Attendance	\N	3	30-07-2022 03:24:44
Windows 10	Chrome 102.0.5005.134	::1	Player Rank	\N	5	30-07-2022 04:33:39
Windows 10	Chrome 102.0.5005.134	::1	Admin Login (Warning!!!)	\N	8	30-07-2022 04:33:41
Windows 10	Chrome 102.0.5005.134	::1	Home	\N	1200	30-07-2022 04:33:49
Windows 10	Chrome 102.0.5005.134	::1	Register	\N	18	30-07-2022 02:49:36
Windows 10	Chrome 102.0.5005.134	::1	Voucher	\N	1	30-07-2022 03:07:56
Windows 10	Chrome 102.0.5005.134	::1	Login	\N	20	30-07-2022 04:14:04
Windows 10	Chrome 102.0.5005.134	::1	Exchange Ticket	\N	5	30-07-2022 03:24:59
Windows 10	Chrome 102.0.5005.134	::1	404 - Not Found	\N	13	30-07-2022 03:24:59
Windows 10	Chrome 102.0.5005.134	::1	Player Panel	\N	11	30-07-2022 04:14:07
Windows 10	Chrome 102.0.5005.134	::1	Redeem Code	\N	1	30-07-2022 03:25:01
\.


                                                                                                                                                                                                             3703.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3704.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3705.dat                                                                                            0000600 0004000 0002000 00000000167 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dolphin Package Box	100003275,100003276,200004289,200004291,300005168,300005169,400006072	2592000	97	3000	1	-	-
\.


                                                                                                                                                                                                                                                                                                                                                                                                         3706.dat                                                                                            0000600 0004000 0002000 00000000323 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10	Добро пожаловать	<p>Наша команда старается сделать Point Blank таким чтобы было интересно</p>\r\n	playerpanel-background.jpg	1659172066	1
\.


                                                                                                                                                                                                                                                                                                             3707.dat                                                                                            0000600 0004000 0002000 00000003310 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        36	35	Major Grade 5	2.414.000
35	34	Major Grade 4	2.143.000
34	33	Major Grade 3	1.902.000
37	36	Lt. Col. Grade 1	2.725.000
38	37	Lt. Col. Grade 2	3.076.000
39	38	Lt. Col. Grade 3	3.467.000
40	39	Lt. Col. Grade 4	3.898.000
41	40	Lt. Col. Grade 5	4.369.000
42	41	Col. Grade 1	4.890.000
43	42	Col. Grade 2	5.461.000
44	43	Col. Grade 3	6.082.000
45	44	Col. Grade 4	6.753.000
46	45	Col. Grade 5	7.474.000
47	46	Brigadier	8.255.000
1	0	Trainee	0
2	1	Senior Trainee	2.000
3	2	Private	5.000
4	3	Corporal	9.000
5	4	Sergeant	14.000
6	5	Staff Sgt. Grade 1	21.000
7	6	Staff Sgt. Grade 2	30.000
8	7	Staff Sgt. Grade 3	41.000
9	8	Sgt. 1st Class Grade 1	54.500
10	9	Sgt. 1st Class Grade 2	70.500
11	10	Sgt. 1st Class Grade 3	89.000
12	11	Sgt. 1st Class Grade 4	110.000
13	12	Master Sgt. Grade 1	134.000
14	13	Master Sgt. Grade 2	151.000
15	14	Master Sgt. Grade 3	191.000
16	15	Master Sgt. Grade 4	224.000
17	16	Master Sgt. Grade 5	260.000
18	17	2nd Lt. Grade 1	301.000
19	18	2nd Lt. Grade 1	347.000
48	47	Major General	9.106.000
49	48	Lt. General	10.037.000
50	49	General	11.058.000
51	50	Commander	12.179.000
55	51	Hero	50.000.000
56	55	Garuda Emperor 1	NULL
57	56	Garuda Emperor 2	NULL
20	19	2nd Lt. Grade 3	398.000
58	57	Garuda Emperor 3	NULL
59	58	Garuda Emperor 4	NULL
61	59	Garuda Emperor 5	NULL
62	52	Bomber	-1
63	53	Game Master	-1
64	54	Moderator	-1
21	20	2nd Lt. Grade 4	454.000
22	21	1st Lt. Grade 1	516.000
23	22	1st Lt. Grade 2	584.000
24	23	1st Lt. Grade 3	658.000
25	24	1st Lt. Grade 4	738.000
26	25	1st Lt. Grade 5	824.000
27	26	Capt. Grade 1	917.000
28	27	Capt. Grade 2	1.017.000
29	28	Capt. Grade 3	1.124.000
30	29	Capt. Grade 4	1.238.000
31	30	Capt. Grade 5	1.359.000
32	31	Major Grade 1	1.510.000
33	32	Major Grade 2	1.691.000
\.


                                                                                                                                                                                                                                                                                                                        3708.dat                                                                                            0000600 0004000 0002000 00000000470 14271176511 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	[DEV] YOR	PBR Studio	PBR Studio	PB Resurrection	f657e0b7a4886fcd129ae4aa5d5554c3.png	867acb1ea67576e276acf46afd6c43f9.png	Добро пожаловать в Point Blank Воскрешение	0	1	http://localhost/pblast/adm/dashboard	\N	\N	\N	1	1	1	1	1	1	0	1	0	\N	1	1	1	1	01c348367804fbce30d3bf017e1af32c
\.


                                                                                                                                                                                                        3709.dat                                                                                            0000600 0004000 0002000 00000000005 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3710.dat                                                                                            0000600 0004000 0002000 00000001747 14271176511 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        120	iXaYHBUD3y6Ir4CcKy9y5zEdSWcMovSjB31rwMGgpSJoMw2PjR5qHBJjLcJEd1r7	0
121	2fiNFRAGck3dJ0El5S11BmWsoP7HFXJ394Shdv5x2Pl9hx0QGQFbxmgbXvBUHdP4	0
123	8JdrzDV6z7CDMjZ6JcDOzK16UafLBurGawzua7R9gtyQzSKqrk8CUZGv2qE87Pqx	0
124	9sNqgbTDm1MKI3XEs4T19267gIv8GZfudFyGTT2NqsCA2AJEOLqUWr4bladQPU8w	0
125	tHm6OpqWYxfS4a7qxgLxyz4vjhp6L7kABKjMF6H1Dl76huUUBsCzhZSXUckSDIwN	0
126	bM1QSjYXXvt3MM7LpU2TqD5AGPKkHYjN4LcsQ8iE9chiCTJLl8bwJplph0XI8mV7	0
127	uuDCy6foGXJBXWg1bROhuBTu9w0Y2UWzlz94VqENVoMHbr4PQoWfZ7UA8GoAVsx2	0
128	9pabOVXJA4PKz0a11YwgLLHZWySO16e5NU3PRb28gcpB4edTLhCsjjvhXzltaLf2	0
129	JuFBHLwRcJmMrjdGZtEXCzL5Jqxj83sUAHyDBX4VJdfWfddBQ1k5K56kMGmbkkbB	0
130	j4bVybe1difIPemoe5oWprODQULw9tYJMYoHjQ34QxlU0MOiARDx5RZsHzOLtQ7N	0
131	ro2EQxMIuMwNXetRHiN0cpwipRd7pMSSmu2e4r3Uu9T2UINHdjHP5ZfpmW911F4l	0
132	YXqpUSf0diRkHLK7WUqCXRZj6KSy4TKdR0BkyLz5k4fpp6EmZwFgAZVaMU2oOteb	0
133	7ayCyR3vV89MQNmdKFD4mLFyxrk3NkvgzXJKLDGxaFCKcM54pe50E8K6jwVaivyO	0
134	DMBvrT33i8NyNC0owxXUEDqOmNXi2wJjxhKKyo405XJTSEfZ1jNsHNrbqlqE3ic3	1
\.


                         3711.dat                                                                                            0000600 0004000 0002000 00000000624 14271176511 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        19	300005232	Barrett M82A1 Premium	The Barrett M82A1 rifle was used in 2002 as a platform for the experimental OSW (Objective Sniper Weapon) prototype. This weapon was fitted with a shorter barrel, and fired 25 mm high-explosive shells developed for the 25×59 mm OCSW (Objective Crew Served Weapon) automatic grenade launcher.	2.5	1	1	0	BARRET_PREMIUM.png	259200	300	604800	600	2592000	1200	1	2000
\.


                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000313073 14271176511 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE pbresurection;
--
-- Name: pbresurection; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pbresurection WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE pbresurection OWNER TO postgres;

\connect pbresurection

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    login character varying DEFAULT ''::character varying NOT NULL,
    password character varying DEFAULT ''::character varying NOT NULL,
    player_id bigint DEFAULT nextval('public.account_id_seq'::regclass) NOT NULL,
    player_name character varying DEFAULT ''::character varying NOT NULL,
    name_color integer DEFAULT 0 NOT NULL,
    clan_id integer DEFAULT 0 NOT NULL,
    rank integer DEFAULT 31 NOT NULL,
    gp integer DEFAULT 250000 NOT NULL,
    exp integer DEFAULT 1690000 NOT NULL,
    pc_cafe integer DEFAULT 1 NOT NULL,
    fights integer DEFAULT 0 NOT NULL,
    fights_win integer DEFAULT 0 NOT NULL,
    fights_lost integer DEFAULT 0 NOT NULL,
    kills_count integer DEFAULT 0 NOT NULL,
    deaths_count integer DEFAULT 0 NOT NULL,
    headshots_count integer DEFAULT 0 NOT NULL,
    escapes integer DEFAULT 0 NOT NULL,
    access_level integer DEFAULT 0 NOT NULL,
    lastip character varying(32) DEFAULT 0 NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    last_rankup_date bigint DEFAULT 1010000 NOT NULL,
    money integer DEFAULT 10000 NOT NULL,
    online boolean DEFAULT false NOT NULL,
    weapon_primary integer DEFAULT 100003004 NOT NULL,
    weapon_secondary integer DEFAULT 601002003 NOT NULL,
    weapon_melee integer DEFAULT 702001001 NOT NULL,
    weapon_thrown_normal integer DEFAULT 803007001 NOT NULL,
    weapon_thrown_special integer DEFAULT 904007002 NOT NULL,
    char_red integer DEFAULT 1001001005 NOT NULL,
    char_blue integer DEFAULT 1001002006 NOT NULL,
    char_helmet integer DEFAULT 1102003001 NOT NULL,
    char_dino integer DEFAULT 1006003041 NOT NULL,
    char_beret integer DEFAULT 0 NOT NULL,
    brooch integer DEFAULT 10 NOT NULL,
    insignia integer DEFAULT 124 NOT NULL,
    medal integer DEFAULT 403 NOT NULL,
    blue_order integer DEFAULT 147 NOT NULL,
    mission_id1 integer DEFAULT 0 NOT NULL,
    clanaccess integer DEFAULT 0 NOT NULL,
    clandate integer DEFAULT 0 NOT NULL,
    effects bigint DEFAULT 0 NOT NULL,
    fights_draw integer DEFAULT 0 NOT NULL,
    mission_id2 integer DEFAULT 0 NOT NULL,
    mission_id3 integer DEFAULT 0 NOT NULL,
    totalkills_count integer DEFAULT 0 NOT NULL,
    totalfights_count integer DEFAULT 0 NOT NULL,
    status bigint DEFAULT '4294967295'::bigint NOT NULL,
    last_login bigint DEFAULT 0 NOT NULL,
    clan_game_pt integer DEFAULT 0 NOT NULL,
    clan_wins_pt integer DEFAULT 0 NOT NULL,
    last_mac macaddr DEFAULT '00:00:00:00:00:00'::macaddr NOT NULL,
    ban_obj_id bigint DEFAULT 0 NOT NULL,
    kuyraicoin integer DEFAULT 1000 NOT NULL,
    hint_question text NOT NULL,
    hint_answer text NOT NULL,
    date_registered character varying,
    email_verification character varying(32) DEFAULT 0 NOT NULL,
    battlepass_type integer DEFAULT 0 NOT NULL,
    facebook character varying(255),
    twitter character varying(255),
    instagram character varying(255),
    github character varying(255)
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: api_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_keys_id_seq OWNER TO postgres;

--
-- Name: api_keys_limit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_keys_limit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_keys_limit_id_seq OWNER TO postgres;

--
-- Name: api_keys_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_keys_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_keys_logs_id_seq OWNER TO postgres;

--
-- Name: auto_ban_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auto_ban_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auto_ban_seq OWNER TO postgres;

--
-- Name: ban_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ban_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ban_seq OWNER TO postgres;

--
-- Name: ban_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ban_history (
    object_id bigint DEFAULT nextval('public.ban_seq'::regclass) NOT NULL,
    provider_id bigint DEFAULT 0 NOT NULL,
    type character varying(255) DEFAULT ''::character varying NOT NULL,
    value character varying(255) DEFAULT ''::character varying NOT NULL,
    reason character varying(255) DEFAULT ''::character varying NOT NULL,
    start_date timestamp(6) without time zone DEFAULT '2000-01-01 00:00:00'::timestamp without time zone NOT NULL,
    end_date timestamp(6) without time zone DEFAULT '2000-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public.ban_history OWNER TO postgres;

--
-- Name: captcha_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.captcha_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.captcha_id_seq OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channels_id_seq OWNER TO postgres;

--
-- Name: check_event_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.check_event_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.check_event_seq OWNER TO postgres;

--
-- Name: check_user_attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.check_user_attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.check_user_attendance_id_seq OWNER TO postgres;

--
-- Name: check_user_attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.check_user_attendance (
    id integer DEFAULT nextval('public.check_user_attendance_id_seq'::regclass) NOT NULL,
    event_id integer,
    player_id integer,
    item_reward character varying(255),
    item_count integer,
    date_claimed character varying(255) DEFAULT nextval('public.check_user_attendance_id_seq'::regclass)
);


ALTER TABLE public.check_user_attendance OWNER TO postgres;

--
-- Name: check_user_itemcode_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.check_user_itemcode_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.check_user_itemcode_seq OWNER TO postgres;

--
-- Name: check_user_itemcode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.check_user_itemcode (
    id integer DEFAULT nextval('public.check_user_itemcode_seq'::regclass),
    uid integer,
    item_code character varying(255),
    username character varying(255),
    date_redeemed character varying(255)
);


ALTER TABLE public.check_user_itemcode OWNER TO postgres;

--
-- Name: check_user_voucher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.check_user_voucher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.check_user_voucher_id_seq OWNER TO postgres;

--
-- Name: check_user_voucher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.check_user_voucher (
    id integer DEFAULT nextval('public.check_user_voucher_id_seq'::regclass) NOT NULL,
    uid integer,
    voucher character varying(255),
    date_claimed character varying(255)
);


ALTER TABLE public.check_user_voucher OWNER TO postgres;

--
-- Name: clan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clan_seq OWNER TO postgres;

--
-- Name: clan_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clan_data (
    clan_id integer DEFAULT nextval('public.clan_seq'::regclass) NOT NULL,
    clan_rank integer DEFAULT 0 NOT NULL,
    clan_name character varying DEFAULT ''::character varying NOT NULL,
    owner_id bigint DEFAULT 0 NOT NULL,
    logo bigint DEFAULT 0 NOT NULL,
    color integer DEFAULT 0 NOT NULL,
    clan_info character varying DEFAULT ''::character varying NOT NULL,
    clan_news character varying DEFAULT ''::character varying NOT NULL,
    create_date integer DEFAULT 0 NOT NULL,
    autoridade integer DEFAULT 0 NOT NULL,
    limite_rank integer DEFAULT 0 NOT NULL,
    limite_idade integer DEFAULT 0 NOT NULL,
    limite_idade2 integer DEFAULT 0 NOT NULL,
    partidas integer DEFAULT 0 NOT NULL,
    vitorias integer DEFAULT 0 NOT NULL,
    derrotas integer DEFAULT 0 NOT NULL,
    pontos real DEFAULT 1000 NOT NULL,
    max_players integer DEFAULT 50 NOT NULL,
    clan_exp integer DEFAULT 0 NOT NULL,
    best_exp character varying DEFAULT ''::character varying NOT NULL,
    best_participation character varying DEFAULT ''::character varying NOT NULL,
    best_wins character varying DEFAULT ''::character varying NOT NULL,
    best_kills character varying DEFAULT ''::character varying NOT NULL,
    best_headshot character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.clan_data OWNER TO postgres;

--
-- Name: clan_invites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clan_invites (
    clan_id integer DEFAULT 0 NOT NULL,
    player_id bigint DEFAULT 0 NOT NULL,
    dateinvite integer DEFAULT 0 NOT NULL,
    text character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.clan_invites OWNER TO postgres;

--
-- Name: event_attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_attendance_id_seq OWNER TO postgres;

--
-- Name: events_attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_attendance (
    id integer DEFAULT nextval('public.event_attendance_id_seq'::regclass) NOT NULL,
    day integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255) NOT NULL,
    item_count character varying(255) NOT NULL,
    total_claim integer NOT NULL,
    date character varying(255) NOT NULL
);


ALTER TABLE public.events_attendance OWNER TO postgres;

--
-- Name: events_login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_login (
    start_date bigint,
    end_date bigint,
    reward_id integer,
    reward_count integer
);


ALTER TABLE public.events_login OWNER TO postgres;

--
-- Name: events_login_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_login_id_seq OWNER TO postgres;

--
-- Name: events_mapbonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_mapbonus (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    map_id integer DEFAULT 0 NOT NULL,
    stage_type integer DEFAULT 0 NOT NULL,
    percent_xp integer DEFAULT 0 NOT NULL,
    percent_gp integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.events_mapbonus OWNER TO postgres;

--
-- Name: events_playtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_playtime (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    title character varying(30) DEFAULT ''::character varying NOT NULL,
    seconds_target bigint DEFAULT 1000 NOT NULL,
    good_reward1 integer DEFAULT 0 NOT NULL,
    good_reward2 integer DEFAULT 0 NOT NULL,
    good_count1 integer DEFAULT 0 NOT NULL,
    good_count2 integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.events_playtime OWNER TO postgres;

--
-- Name: events_quest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_quest (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.events_quest OWNER TO postgres;

--
-- Name: events_rankup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_rankup (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    percent_xp integer DEFAULT 0 NOT NULL,
    percent_gp integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.events_rankup OWNER TO postgres;

--
-- Name: events_register; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_register (
    id character varying(255),
    item_id character varying(255),
    item_name character varying(255),
    item_category character varying(255),
    item_count character varying(255),
    stock integer,
    is_active boolean
);


ALTER TABLE public.events_register OWNER TO postgres;

--
-- Name: events_visit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_visit (
    event_id integer DEFAULT nextval('public.check_event_seq'::regclass) NOT NULL,
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    title character varying(59) DEFAULT ''::character varying NOT NULL,
    checks integer DEFAULT 7 NOT NULL,
    goods1 character varying NOT NULL,
    counts1 character varying NOT NULL,
    goods2 character varying DEFAULT ''::character varying NOT NULL,
    counts2 character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.events_visit OWNER TO postgres;

--
-- Name: events_xmas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_xmas (
    start_date bigint DEFAULT 0 NOT NULL,
    end_date bigint DEFAULT 0 NOT NULL,
    reward_id integer NOT NULL,
    reward_count integer NOT NULL
);


ALTER TABLE public.events_xmas OWNER TO postgres;

--
-- Name: friends; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friends (
    owner_id bigint DEFAULT 0 NOT NULL,
    friend_id bigint DEFAULT 0 NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    removed boolean DEFAULT false NOT NULL
);


ALTER TABLE public.friends OWNER TO postgres;

--
-- Name: gameservers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gameservers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gameservers_id_seq OWNER TO postgres;

--
-- Name: gift_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gift_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gift_id_seq OWNER TO postgres;

--
-- Name: info_basic_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_basic_items (
    acquisition integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255) DEFAULT ''::character varying NOT NULL,
    item_count integer NOT NULL,
    item_equip integer NOT NULL
);


ALTER TABLE public.info_basic_items OWNER TO postgres;

--
-- Name: info_channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_channels (
    server_id integer DEFAULT 0 NOT NULL,
    channel_id integer DEFAULT 0 NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    announce character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.info_channels OWNER TO postgres;

--
-- Name: info_cupons_flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_cupons_flags (
    item_id integer NOT NULL,
    effect_flag bigint NOT NULL
);


ALTER TABLE public.info_cupons_flags OWNER TO postgres;

--
-- Name: info_gameservers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_gameservers (
    id integer NOT NULL,
    state integer NOT NULL,
    type integer NOT NULL,
    ip character varying(255) DEFAULT ''::character varying NOT NULL,
    port integer NOT NULL,
    sync_port integer NOT NULL,
    max_players integer NOT NULL
);


ALTER TABLE public.info_gameservers OWNER TO postgres;

--
-- Name: info_login_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_login_configs (
    config_id integer DEFAULT 0 NOT NULL,
    "onlyGM" boolean DEFAULT false NOT NULL,
    missions boolean DEFAULT true NOT NULL,
    "UserFileList" character varying(32) DEFAULT 0 NOT NULL,
    "Version" character varying(8) DEFAULT 0 NOT NULL,
    "GiftSystem" boolean DEFAULT false NOT NULL,
    "ExitURL" character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.info_login_configs OWNER TO postgres;

--
-- Name: info_missions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_missions (
    mission_id integer DEFAULT 0 NOT NULL,
    price integer DEFAULT 0 NOT NULL,
    enable boolean DEFAULT false NOT NULL
);


ALTER TABLE public.info_missions OWNER TO postgres;

--
-- Name: info_rank_awards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.info_rank_awards (
    rank_id integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255) DEFAULT ''::character varying NOT NULL,
    item_count integer NOT NULL,
    item_equip integer NOT NULL
);


ALTER TABLE public.info_rank_awards OWNER TO postgres;

--
-- Name: ipsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ipsystem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ipsystem_id_seq OWNER TO postgres;

--
-- Name: item_code_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_code_id_seq OWNER TO postgres;

--
-- Name: item_code; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_code (
    id integer DEFAULT nextval('public.item_code_id_seq'::regclass) NOT NULL,
    item_id character varying(32),
    item_name character varying(255),
    item_count character varying(255),
    item_code character varying(255),
    cash character varying(32),
    type character varying(255),
    qty integer,
    valid_date character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.item_code OWNER TO postgres;

--
-- Name: item_goods_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_goods_sets (
    set_id integer NOT NULL,
    set_name character varying(255),
    visible boolean DEFAULT true
);


ALTER TABLE public.item_goods_sets OWNER TO postgres;

--
-- Name: item_goods_sets_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_goods_sets_items (
    set_id integer NOT NULL,
    item_id integer NOT NULL,
    item_name character varying(255),
    item_consume integer,
    item_count integer,
    price_money integer,
    price_points integer
);


ALTER TABLE public.item_goods_sets_items OWNER TO postgres;

--
-- Name: item_voucher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_voucher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_voucher_id_seq OWNER TO postgres;

--
-- Name: item_voucher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_voucher (
    id integer DEFAULT nextval('public.item_voucher_id_seq'::regclass) NOT NULL,
    voucher_item character varying(255),
    voucher_cash character varying(255),
    voucher_webcoin character varying(255),
    voucher_code character varying(255),
    active boolean
);


ALTER TABLE public.item_voucher OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO postgres;

--
-- Name: jogador_amigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jogador_amigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jogador_amigo_seq OWNER TO postgres;

--
-- Name: jogador_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jogador_inventario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jogador_inventario_seq OWNER TO postgres;

--
-- Name: jogador_mensagem_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jogador_mensagem_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jogador_mensagem_seq OWNER TO postgres;

--
-- Name: launcher_launcherkey_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.launcher_launcherkey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.launcher_launcherkey_id_seq OWNER TO postgres;

--
-- Name: launcher_launcherkey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.launcher_launcherkey (
    id integer DEFAULT nextval('public.launcher_launcherkey_id_seq'::regclass) NOT NULL,
    key integer,
    status integer
);


ALTER TABLE public.launcher_launcherkey OWNER TO postgres;

--
-- Name: launcher_loghistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.launcher_loghistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.launcher_loghistory_id_seq OWNER TO postgres;

--
-- Name: launcher_loghistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.launcher_loghistory (
    id integer DEFAULT nextval('public.launcher_loghistory_id_seq'::regclass) NOT NULL,
    ip_address character varying(255),
    date_created character varying(255)
);


ALTER TABLE public.launcher_loghistory OWNER TO postgres;

--
-- Name: launcher_version_control_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.launcher_version_control_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.launcher_version_control_id_seq OWNER TO postgres;

--
-- Name: launcher_version_control; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.launcher_version_control (
    id integer DEFAULT nextval('public.launcher_version_control_id_seq'::regclass) NOT NULL,
    ip_address character varying(255),
    hwid character varying(255),
    current_patch_version integer,
    current_launcher_version integer,
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.launcher_version_control OWNER TO postgres;

--
-- Name: loja_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loja_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loja_seq OWNER TO postgres;

--
-- Name: message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_id_seq OWNER TO postgres;

--
-- Name: nick_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nick_history (
    player_id bigint DEFAULT 0 NOT NULL,
    from_nick character varying(255) DEFAULT ''::character varying NOT NULL,
    to_nick character varying(255) DEFAULT ''::character varying NOT NULL,
    change_date bigint DEFAULT 0 NOT NULL,
    motive character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.nick_history OWNER TO postgres;

--
-- Name: player_bonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_bonus (
    player_id bigint DEFAULT 0 NOT NULL,
    bonuses integer DEFAULT 0 NOT NULL,
    sightcolor integer DEFAULT 4 NOT NULL,
    freepass integer DEFAULT 0 NOT NULL,
    fakerank integer DEFAULT 55 NOT NULL,
    fakenick character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.player_bonus OWNER TO postgres;

--
-- Name: player_characters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.player_characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_characters_id_seq OWNER TO postgres;

--
-- Name: player_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_configs (
    owner_id bigint DEFAULT 0 NOT NULL,
    config integer DEFAULT 55 NOT NULL,
    sangue integer DEFAULT 1 NOT NULL,
    mira integer DEFAULT 0 NOT NULL,
    mao integer DEFAULT 0 NOT NULL,
    audio1 integer DEFAULT 100 NOT NULL,
    audio2 integer DEFAULT 60 NOT NULL,
    audio_enable integer DEFAULT 7 NOT NULL,
    sensibilidade integer DEFAULT 50 NOT NULL,
    visao integer DEFAULT 70 NOT NULL,
    mouse_invertido integer DEFAULT 0 NOT NULL,
    msgconvite integer DEFAULT 0 NOT NULL,
    chatsussurro integer DEFAULT 0 NOT NULL,
    macro integer DEFAULT 31 NOT NULL,
    macro_1 character varying DEFAULT ''::character varying NOT NULL,
    macro_2 character varying DEFAULT ''::character varying NOT NULL,
    macro_3 character varying DEFAULT ''::character varying NOT NULL,
    macro_4 character varying DEFAULT ''::character varying NOT NULL,
    macro_5 character varying DEFAULT ''::character varying NOT NULL,
    keys bytea DEFAULT '\x'::bytea NOT NULL
);


ALTER TABLE public.player_configs OWNER TO postgres;

--
-- Name: player_eqipment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.player_eqipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_eqipment_id_seq OWNER TO postgres;

--
-- Name: player_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_events (
    player_id bigint DEFAULT 0 NOT NULL,
    last_visit_event_id integer DEFAULT 0 NOT NULL,
    last_visit_sequence1 integer DEFAULT 0 NOT NULL,
    last_visit_sequence2 integer DEFAULT 0 NOT NULL,
    next_visit_date integer DEFAULT 0 NOT NULL,
    last_xmas_reward_date bigint DEFAULT 0 NOT NULL,
    last_playtime_date bigint DEFAULT 0 NOT NULL,
    last_playtime_value integer DEFAULT 0 NOT NULL,
    last_playtime_finish integer DEFAULT 0 NOT NULL,
    last_login_date bigint DEFAULT 0 NOT NULL,
    last_quest_date bigint DEFAULT 0 NOT NULL,
    last_quest_finish integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.player_events OWNER TO postgres;

--
-- Name: player_friends_player_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.player_friends_player_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_friends_player_account_id_seq OWNER TO postgres;

--
-- Name: player_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_items (
    object_id bigint DEFAULT nextval('public.items_id_seq'::regclass) NOT NULL,
    owner_id bigint DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    count bigint DEFAULT 0 NOT NULL,
    category integer DEFAULT 0 NOT NULL,
    equip integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.player_items OWNER TO postgres;

--
-- Name: player_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_messages (
    object_id integer DEFAULT nextval('public.message_id_seq'::regclass) NOT NULL,
    owner_id bigint DEFAULT 0 NOT NULL,
    sender_id bigint DEFAULT 0 NOT NULL,
    clan_id integer DEFAULT 0 NOT NULL,
    sender_name character varying(255) DEFAULT ''::character varying NOT NULL,
    text character varying(255) DEFAULT ''::character varying NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    state integer DEFAULT 1 NOT NULL,
    expire bigint DEFAULT 0 NOT NULL,
    cb integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.player_messages OWNER TO postgres;

--
-- Name: player_missions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_missions (
    owner_id bigint DEFAULT 0 NOT NULL,
    actual_mission integer DEFAULT 0 NOT NULL,
    card1 integer DEFAULT 0 NOT NULL,
    card2 integer DEFAULT 0 NOT NULL,
    card3 integer DEFAULT 0 NOT NULL,
    card4 integer DEFAULT 0 NOT NULL,
    mission1 bytea DEFAULT '\x'::bytea NOT NULL,
    mission2 bytea DEFAULT '\x'::bytea NOT NULL,
    mission3 bytea DEFAULT '\x'::bytea NOT NULL,
    mission4 bytea DEFAULT '\x'::bytea NOT NULL
);


ALTER TABLE public.player_missions OWNER TO postgres;

--
-- Name: player_titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_titles (
    owner_id bigint DEFAULT 0 NOT NULL,
    titleequiped1 integer DEFAULT 0 NOT NULL,
    titleequiped2 integer DEFAULT 0 NOT NULL,
    titleequiped3 integer DEFAULT 0 NOT NULL,
    titleflags bigint DEFAULT 0 NOT NULL,
    titleslots integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.player_titles OWNER TO postgres;

--
-- Name: player_topups_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.player_topups_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_topups_seq OWNER TO postgres;

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_id_seq OWNER TO postgres;

--
-- Name: server_license_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.server_license_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.server_license_id_seq OWNER TO postgres;

--
-- Name: shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop (
    good_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    price_gold integer DEFAULT 0 NOT NULL,
    price_cash integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    buy_type integer DEFAULT 0 NOT NULL,
    buy_type2 integer DEFAULT 0 NOT NULL,
    buy_type3 integer DEFAULT 0 NOT NULL,
    tag integer DEFAULT 0 NOT NULL,
    title integer DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.shop OWNER TO postgres;

--
-- Name: COLUMN shop.good_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.good_id IS 'id товара из игры
Примечание: id генерируется клиентом или где-то хранится. Пока неизвестно';


--
-- Name: COLUMN shop.item_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.item_id IS 'id товара из игры
Примечание: id генерируется клиентом или где-то хранится. Пока неизвестно';


--
-- Name: COLUMN shop.item_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.item_name IS 'имя товара в таблице';


--
-- Name: COLUMN shop.price_gold; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.price_gold IS 'цена за игровые очки';


--
-- Name: COLUMN shop.price_cash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.price_cash IS 'цена за игровой донат';


--
-- Name: COLUMN shop.count; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.count IS 'Количество для покупки (Если указать price_cash и price_gold при buy_type [1,2,3], будет возможность выбора типа покупки)
Дни - Если buy_type = 2 то расчитывается как Дата, то есть 1 день равен 86400 секундам(count). Если надо расчитать покупку по дням то (86400 * кол дней)
Штуки - 1 к 1 в отношение count. 1 штука = 1 count

Максимальный период = 9588 дней
Максимальное количество = 2100000000 штук';


--
-- Name: COLUMN shop.buy_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.buy_type IS '1 - штуки
2 - период(дата)
3 - вечное';


--
-- Name: COLUMN shop.buy_type2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.buy_type2 IS 'не понятно для чего это поле';


--
-- Name: COLUMN shop.buy_type3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.buy_type3 IS 'не понятно для чего это поле';


--
-- Name: COLUMN shop.tag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.tag IS 'Приоритет отображения в таблице
0 - обычное (без бирки)
1 - новое (бирка NEW)
2 - горячее (бирка HOT)
3 - ивентовое (бирка EVENT)
4 - неизвестно
5 - распрадажа (бирка SALE)';


--
-- Name: COLUMN shop.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.title IS 'Требования к покупке. 
номер title = порядковому номеру звания
';


--
-- Name: COLUMN shop.visibility; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shop.visibility IS '2 - скрыть с продажи в магазине
3 - это отображение как вечный';


--
-- Name: shop_set; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_set (
    good_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    price_gold integer DEFAULT 0 NOT NULL,
    price_cash integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    buy_type integer DEFAULT 0 NOT NULL,
    buy_type2 integer DEFAULT 0 NOT NULL,
    buy_type3 integer DEFAULT 0 NOT NULL,
    tag integer DEFAULT 0 NOT NULL,
    title integer DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.shop_set OWNER TO postgres;

--
-- Name: shopunbuild; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopunbuild (
    good_id integer DEFAULT 0 NOT NULL,
    item_id integer DEFAULT 0 NOT NULL,
    item_name character varying DEFAULT ''::character varying NOT NULL,
    price_gold integer DEFAULT 0 NOT NULL,
    price_cash integer DEFAULT 0 NOT NULL,
    count integer DEFAULT 0 NOT NULL,
    buy_type integer DEFAULT 0 NOT NULL,
    buy_type2 integer DEFAULT 0 NOT NULL,
    buy_type3 integer DEFAULT 0 NOT NULL,
    tag integer DEFAULT 0 NOT NULL,
    title integer DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.shopunbuild OWNER TO postgres;

--
-- Name: COLUMN shopunbuild.good_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.good_id IS 'уникальный id по таблице (порядковый номер записи)';


--
-- Name: COLUMN shopunbuild.item_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.item_id IS 'id товара из игры
Примечание: id генерируется клиентом или где-то хранится. Пока неизвестно';


--
-- Name: COLUMN shopunbuild.item_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.item_name IS 'имя товара в таблице';


--
-- Name: COLUMN shopunbuild.price_gold; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.price_gold IS 'цена за игровые очки';


--
-- Name: COLUMN shopunbuild.price_cash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.price_cash IS 'цена за игровой донат';


--
-- Name: COLUMN shopunbuild.count; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.count IS 'Количество для покупки (Если указать price_cash и price_gold при buy_type [1,2,3], будет возможность выбора типа покупки)
Дни - Если buy_type = 2 то расчитывается как Дата, то есть 1 день равен 86400 секундам(count). Если надо расчитать покупку по дням то (86400 * кол дней)
Штуки - 1 к 1 в отношение count. 1 штука = 1 count

Максимальный период = 9588 дней
Максимальное количество = 2100000000 штук';


--
-- Name: COLUMN shopunbuild.buy_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.buy_type IS '1 - штуки
2 - период(дата)
3 - вечное';


--
-- Name: COLUMN shopunbuild.buy_type2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.buy_type2 IS 'не понятно для чего это поле';


--
-- Name: COLUMN shopunbuild.buy_type3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.buy_type3 IS 'не понятно для чего это поле';


--
-- Name: COLUMN shopunbuild.tag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.tag IS 'Приоритет отображения в таблице
0 - обычное (без бирки)
1 - новое (бирка NEW)
2 - горячее (бирка HOT)
3 - ивентовое (бирка EVENT)';


--
-- Name: COLUMN shopunbuild.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.shopunbuild.title IS 'Требования к покупке.
номер title = порядковому номеру звания
';


--
-- Name: storage_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.storage_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.storage_seq OWNER TO postgres;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.templates_id_seq OWNER TO postgres;

--
-- Name: tournament_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tournament_rules (
    tournament character varying(255) NOT NULL,
    name_exception character varying(255) NOT NULL
);


ALTER TABLE public.tournament_rules OWNER TO postgres;

--
-- Name: trade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trade_id_seq OWNER TO postgres;

--
-- Name: trade_market; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trade_market (
    id integer DEFAULT nextval('public.trade_id_seq'::regclass) NOT NULL,
    item_id character varying(255) NOT NULL,
    item_name character varying(255),
    item_category integer,
    item_duration character varying(255),
    item_price character varying(255),
    item_owner character varying(255),
    day character varying(255),
    month character varying(255),
    year character varying(255),
    valid_duration character varying(255)
);


ALTER TABLE public.trade_market OWNER TO postgres;

--
-- Name: web_adminpanel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_adminpanel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_adminpanel_id_seq OWNER TO postgres;

--
-- Name: web_all_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_all_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE public.web_all_log_id_seq OWNER TO postgres;

--
-- Name: web_api_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_api_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_api_data_id_seq OWNER TO postgres;

--
-- Name: web_api_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_api_keys (
    id integer DEFAULT nextval('public.api_keys_id_seq'::regclass) NOT NULL,
    user_id integer,
    api_key character varying(40),
    level integer,
    ignore_limits integer,
    is_private_key integer,
    ip_addresses text,
    date_created integer
);


ALTER TABLE public.web_api_keys OWNER TO postgres;

--
-- Name: web_api_limits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_api_limits (
    id integer DEFAULT nextval('public.api_keys_limit_id_seq'::regclass) NOT NULL,
    uri character varying(255),
    count integer,
    hour_started integer,
    api_key character varying(255)
);


ALTER TABLE public.web_api_limits OWNER TO postgres;

--
-- Name: web_api_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_api_logs (
    id integer DEFAULT nextval('public.api_keys_logs_id_seq'::regclass) NOT NULL,
    uri character varying(255),
    method character varying(255),
    params text,
    api_key character varying(255),
    ip_address character varying(255),
    "time" integer,
    rtime real,
    authorized character varying(255),
    response_code integer
);


ALTER TABLE public.web_api_logs OWNER TO postgres;

--
-- Name: web_bandwith; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_bandwith (
    id integer NOT NULL,
    total_point_used character varying(255),
    total_cash_used character varying(255),
    total_item_buyed character varying(255),
    max_point_used character varying(255),
    max_cash_used character varying(255),
    max_item_buyed character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_bandwith OWNER TO postgres;

--
-- Name: web_battlepass_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_battlepass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_battlepass_id_seq OWNER TO postgres;

--
-- Name: web_battlepass; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_battlepass (
    id integer DEFAULT nextval('public.web_battlepass_id_seq'::regclass) NOT NULL,
    battlepass_name character varying(255) NOT NULL,
    battlepass_type integer NOT NULL,
    battlepass_reward text DEFAULT nextval('public.web_battlepass_id_seq'::regclass) NOT NULL,
    battlepass_status integer,
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_battlepass OWNER TO postgres;

--
-- Name: web_battlepass_list_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_battlepass_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_battlepass_list_id_seq OWNER TO postgres;

--
-- Name: web_battlepass_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_battlepass_list (
    id integer NOT NULL,
    battlepass_level integer DEFAULT nextval('public.web_battlepass_list_id_seq'::regclass),
    battlepass_totalexp integer,
    battlepass_reward_item integer,
    battlepass_reward_duration integer,
    battlepass_type integer,
    battlepass_total_claimed integer DEFAULT 0,
    date_created integer,
    date_updated integer
);


ALTER TABLE public.web_battlepass_list OWNER TO postgres;

--
-- Name: web_customtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_customtoken (
    id integer NOT NULL,
    csrf_token character varying(255),
    ip_address character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_customtoken OWNER TO postgres;

--
-- Name: web_download_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_download_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_download_seq OWNER TO postgres;

--
-- Name: web_download_clientlauncher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_download_clientlauncher (
    id integer DEFAULT nextval('public.web_download_seq'::regclass) NOT NULL,
    file_name character varying,
    file_description character varying(255),
    file_size character varying(255),
    file_total_download character varying(255),
    file_cloud_type character varying(255),
    file_type character varying(255),
    file_url character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_download_clientlauncher OWNER TO postgres;

--
-- Name: web_email_confirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_email_confirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_email_confirmation_id_seq OWNER TO postgres;

--
-- Name: web_exchangeticket_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_exchangeticket_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_exchangeticket_seq OWNER TO postgres;

--
-- Name: web_exchangeticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_exchangeticket (
    id integer DEFAULT nextval('public.web_exchangeticket_seq'::regclass) NOT NULL,
    item_id character varying(255),
    item_name character varying(255),
    item_count character varying(255),
    item_price character varying(255),
    item_img character varying(255),
    stock character varying(255),
    visible character varying(255)
);


ALTER TABLE public.web_exchangeticket OWNER TO postgres;

--
-- Name: web_giftitem_log_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_giftitem_log_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1;


ALTER TABLE public.web_giftitem_log_seq OWNER TO postgres;

--
-- Name: web_ipbanned; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_ipbanned (
    ip_address character varying(255)
);


ALTER TABLE public.web_ipbanned OWNER TO postgres;

--
-- Name: web_launcher_ipaddress_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_launcher_ipaddress_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_launcher_ipaddress_id OWNER TO postgres;

--
-- Name: web_reset_password_sequence_id; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_reset_password_sequence_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_reset_password_sequence_id OWNER TO postgres;

--
-- Name: web_log_forgotpassword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_log_forgotpassword (
    id integer DEFAULT nextval('public.web_reset_password_sequence_id'::regclass) NOT NULL,
    email character varying(255),
    secret_token text,
    valid_date character varying(255),
    status character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_log_forgotpassword OWNER TO postgres;

--
-- Name: web_log_general; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_log_general (
    operating_system character varying(255),
    browser character varying(255),
    ip_address character varying(255),
    visited_page character varying(255),
    actions character varying(255),
    total_visit character varying(255),
    last_visit character varying(255)
);


ALTER TABLE public.web_log_general OWNER TO postgres;

--
-- Name: web_shop_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_shop_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_shop_log_id_seq OWNER TO postgres;

--
-- Name: web_log_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_log_shop (
    id integer DEFAULT nextval('public.web_shop_log_id_seq'::regclass) NOT NULL,
    owner_id integer,
    item_id integer,
    count integer,
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_log_shop OWNER TO postgres;

--
-- Name: web_log_verifyaccount_id_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_log_verifyaccount_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_log_verifyaccount_id_sequence OWNER TO postgres;

--
-- Name: web_log_verifyaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_log_verifyaccount (
    id integer DEFAULT nextval('public.web_log_verifyaccount_id_sequence'::regclass) NOT NULL,
    email character varying(255),
    secret_token text,
    valid_date character varying(255),
    status character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_log_verifyaccount OWNER TO postgres;

--
-- Name: web_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE public.web_news_id_seq OWNER TO postgres;

--
-- Name: web_packshop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_packshop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_packshop_id_seq OWNER TO postgres;

--
-- Name: web_packshop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_packshop (
    id integer DEFAULT nextval('public.web_packshop_id_seq'::regclass) NOT NULL,
    package_name character varying(255),
    package_reward character varying(255),
    package_duration character varying(255),
    package_qty integer,
    package_price integer,
    package_status character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_packshop OWNER TO postgres;

--
-- Name: web_quickslide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_quickslide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE public.web_quickslide_id_seq OWNER TO postgres;

--
-- Name: web_quickslide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_quickslide (
    id integer DEFAULT nextval('public.web_quickslide_id_seq'::regclass) NOT NULL,
    quickslide_title character varying(255),
    quickslide_description text,
    quickslide_img character varying(255),
    quickslide_date character varying(255),
    quickslide_state integer
);


ALTER TABLE public.web_quickslide OWNER TO postgres;

--
-- Name: web_rankinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_rankinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99
    CACHE 1;


ALTER TABLE public.web_rankinfo_id_seq OWNER TO postgres;

--
-- Name: web_rankinfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_rankinfo (
    id integer DEFAULT nextval('public.web_rankinfo_id_seq'::regclass) NOT NULL,
    rank character varying(255),
    rank_name character varying(255) DEFAULT 0,
    expend character varying(255) DEFAULT 0
);


ALTER TABLE public.web_rankinfo OWNER TO postgres;

--
-- Name: web_recharge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_recharge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE public.web_recharge_id_seq OWNER TO postgres;

--
-- Name: web_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_report_id_seq OWNER TO postgres;

--
-- Name: web_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_settings (
    id integer NOT NULL,
    meta_author character varying(255),
    meta_description character varying(255),
    meta_keywords character varying(255),
    project_name character varying(255),
    project_logo character varying(255),
    project_icon character varying(255),
    running_text character varying(255),
    server_condition character varying(255),
    website_condition character varying(255),
    discord_embed_link character varying(255),
    facebook_embed_link character varying(255),
    instagram_embed_link character varying(255),
    youtube_embed_link character varying(255),
    webshop character varying(255),
    trade_market character varying(255),
    exchange_ticket character varying(255),
    voucher character varying(255),
    forgot_password character varying(255),
    register character varying(255),
    attendance character varying(255),
    redeemcode character varying(255),
    change_email character varying(255),
    event_ticket character varying(255),
    email_verification character varying(255),
    google_register character varying(255),
    web_log character varying(255),
    packshop character varying(255),
    api_authorization_key character varying(255)
);


ALTER TABLE public.web_settings OWNER TO postgres;

--
-- Name: COLUMN web_settings.event_ticket; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.web_settings.event_ticket IS 'Ticket ID';


--
-- Name: web_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_shop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_shop_id_seq OWNER TO postgres;

--
-- Name: web_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_shop (
    id integer DEFAULT nextval('public.web_shop_id_seq'::regclass) NOT NULL,
    item_id integer,
    item_name character varying(255),
    item_image character varying(255),
    item_description text,
    item_count_option character varying(255),
    item_price_option character varying(255),
    item_stock character varying(255),
    item_visible character varying(255),
    date_created character varying(255),
    date_updated character varying(255)
);


ALTER TABLE public.web_shop OWNER TO postgres;

--
-- Name: web_tokenkey_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_tokenkey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_tokenkey_id_seq OWNER TO postgres;

--
-- Name: web_tokenkey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_tokenkey (
    id integer DEFAULT nextval('public.web_tokenkey_id_seq'::regclass) NOT NULL,
    token character varying(255),
    is_valid integer
);


ALTER TABLE public.web_tokenkey OWNER TO postgres;

--
-- Name: webdata_news_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webdata_news_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE public.webdata_news_seq OWNER TO postgres;

--
-- Name: webshop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webshop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE public.webshop_id_seq OWNER TO postgres;

--
-- Name: webshop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webshop (
    id integer DEFAULT nextval('public.webshop_id_seq'::regclass) NOT NULL,
    webshop_itemid character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemname character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemdescription text,
    webshop_itemrating character varying(255),
    webshop_itemcategory character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemstatus character varying(1) DEFAULT 1,
    webshop_totalbuy character varying(255),
    webshop_itemimg character varying(255),
    webshop_itemcount_3days character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemprice_3days character varying(255) DEFAULT 0 NOT NULL,
    webshop_itemcount_7days character varying(255),
    webshop_itemprice_7days character varying(255),
    webshop_itemcount_30days character varying(255),
    webshop_itemprice_30days character varying(255),
    webshop_itemcount_permanent character varying(255),
    webshop_itemprice_permanent character varying(255)
);


ALTER TABLE public.webshop OWNER TO postgres;

--
-- Name: COLUMN webshop.webshop_itemid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemid IS 'ITEM ID';


--
-- Name: COLUMN webshop.webshop_itemname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemname IS 'ITEM NAME';


--
-- Name: COLUMN webshop.webshop_itemrating; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemrating IS 'Stars Rating For Acc';


--
-- Name: COLUMN webshop.webshop_itemcategory; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemcategory IS 'Categori : Main / Character & Headgear / Item';


--
-- Name: COLUMN webshop.webshop_itemstatus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemstatus IS 'Status : 1 = Active, 2 = Disabled';


--
-- Name: COLUMN webshop.webshop_totalbuy; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_totalbuy IS 'Automatic Filled If Players Buying The Item';


--
-- Name: COLUMN webshop.webshop_itemcount_3days; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemcount_3days IS '3 Days Count : 259200';


--
-- Name: COLUMN webshop.webshop_itemprice_3days; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemprice_3days IS '3 Days Duration Price';


--
-- Name: COLUMN webshop.webshop_itemcount_7days; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemcount_7days IS '7 Days Count : 604800';


--
-- Name: COLUMN webshop.webshop_itemprice_7days; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemprice_7days IS '7 Days Duration Price';


--
-- Name: COLUMN webshop.webshop_itemcount_30days; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemcount_30days IS '30 Days Count : 2592000';


--
-- Name: COLUMN webshop.webshop_itemprice_30days; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemprice_30days IS '30 Days Duration Price';


--
-- Name: COLUMN webshop.webshop_itemcount_permanent; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemcount_permanent IS 'Permanent Count : 1';


--
-- Name: COLUMN webshop.webshop_itemprice_permanent; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.webshop.webshop_itemprice_permanent IS 'Permanent Duration Price';


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (login, password, player_id, player_name, name_color, clan_id, rank, gp, exp, pc_cafe, fights, fights_win, fights_lost, kills_count, deaths_count, headshots_count, escapes, access_level, lastip, email, last_rankup_date, money, online, weapon_primary, weapon_secondary, weapon_melee, weapon_thrown_normal, weapon_thrown_special, char_red, char_blue, char_helmet, char_dino, char_beret, brooch, insignia, medal, blue_order, mission_id1, clanaccess, clandate, effects, fights_draw, mission_id2, mission_id3, totalkills_count, totalfights_count, status, last_login, clan_game_pt, clan_wins_pt, last_mac, ban_obj_id, kuyraicoin, hint_question, hint_answer, date_registered, email_verification, battlepass_type, facebook, twitter, instagram, github) FROM stdin;
\.
COPY public.accounts (login, password, player_id, player_name, name_color, clan_id, rank, gp, exp, pc_cafe, fights, fights_win, fights_lost, kills_count, deaths_count, headshots_count, escapes, access_level, lastip, email, last_rankup_date, money, online, weapon_primary, weapon_secondary, weapon_melee, weapon_thrown_normal, weapon_thrown_special, char_red, char_blue, char_helmet, char_dino, char_beret, brooch, insignia, medal, blue_order, mission_id1, clanaccess, clandate, effects, fights_draw, mission_id2, mission_id3, totalkills_count, totalfights_count, status, last_login, clan_game_pt, clan_wins_pt, last_mac, ban_obj_id, kuyraicoin, hint_question, hint_answer, date_registered, email_verification, battlepass_type, facebook, twitter, instagram, github) FROM '$$PATH$$/3649.dat';

--
-- Data for Name: ban_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ban_history (object_id, provider_id, type, value, reason, start_date, end_date) FROM stdin;
\.
COPY public.ban_history (object_id, provider_id, type, value, reason, start_date, end_date) FROM '$$PATH$$/3650.dat';

--
-- Data for Name: check_user_attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.check_user_attendance (id, event_id, player_id, item_reward, item_count, date_claimed) FROM stdin;
\.
COPY public.check_user_attendance (id, event_id, player_id, item_reward, item_count, date_claimed) FROM '$$PATH$$/3651.dat';

--
-- Data for Name: check_user_itemcode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.check_user_itemcode (id, uid, item_code, username, date_redeemed) FROM stdin;
\.
COPY public.check_user_itemcode (id, uid, item_code, username, date_redeemed) FROM '$$PATH$$/3652.dat';

--
-- Data for Name: check_user_voucher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.check_user_voucher (id, uid, voucher, date_claimed) FROM stdin;
\.
COPY public.check_user_voucher (id, uid, voucher, date_claimed) FROM '$$PATH$$/3653.dat';

--
-- Data for Name: clan_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clan_data (clan_id, clan_rank, clan_name, owner_id, logo, color, clan_info, clan_news, create_date, autoridade, limite_rank, limite_idade, limite_idade2, partidas, vitorias, derrotas, pontos, max_players, clan_exp, best_exp, best_participation, best_wins, best_kills, best_headshot) FROM stdin;
\.
COPY public.clan_data (clan_id, clan_rank, clan_name, owner_id, logo, color, clan_info, clan_news, create_date, autoridade, limite_rank, limite_idade, limite_idade2, partidas, vitorias, derrotas, pontos, max_players, clan_exp, best_exp, best_participation, best_wins, best_kills, best_headshot) FROM '$$PATH$$/3654.dat';

--
-- Data for Name: clan_invites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clan_invites (clan_id, player_id, dateinvite, text) FROM stdin;
\.
COPY public.clan_invites (clan_id, player_id, dateinvite, text) FROM '$$PATH$$/3655.dat';

--
-- Data for Name: events_attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_attendance (id, day, item_id, item_name, item_count, total_claim, date) FROM stdin;
\.
COPY public.events_attendance (id, day, item_id, item_name, item_count, total_claim, date) FROM '$$PATH$$/3656.dat';

--
-- Data for Name: events_login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_login (start_date, end_date, reward_id, reward_count) FROM stdin;
\.
COPY public.events_login (start_date, end_date, reward_id, reward_count) FROM '$$PATH$$/3657.dat';

--
-- Data for Name: events_mapbonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_mapbonus (start_date, end_date, map_id, stage_type, percent_xp, percent_gp) FROM stdin;
\.
COPY public.events_mapbonus (start_date, end_date, map_id, stage_type, percent_xp, percent_gp) FROM '$$PATH$$/3658.dat';

--
-- Data for Name: events_playtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_playtime (start_date, end_date, title, seconds_target, good_reward1, good_reward2, good_count1, good_count2) FROM stdin;
\.
COPY public.events_playtime (start_date, end_date, title, seconds_target, good_reward1, good_reward2, good_count1, good_count2) FROM '$$PATH$$/3659.dat';

--
-- Data for Name: events_quest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_quest (start_date, end_date) FROM stdin;
\.
COPY public.events_quest (start_date, end_date) FROM '$$PATH$$/3660.dat';

--
-- Data for Name: events_rankup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_rankup (start_date, end_date, percent_xp, percent_gp) FROM stdin;
\.
COPY public.events_rankup (start_date, end_date, percent_xp, percent_gp) FROM '$$PATH$$/3661.dat';

--
-- Data for Name: events_register; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_register (id, item_id, item_name, item_category, item_count, stock, is_active) FROM stdin;
\.
COPY public.events_register (id, item_id, item_name, item_category, item_count, stock, is_active) FROM '$$PATH$$/3662.dat';

--
-- Data for Name: events_visit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_visit (event_id, start_date, end_date, title, checks, goods1, counts1, goods2, counts2) FROM stdin;
\.
COPY public.events_visit (event_id, start_date, end_date, title, checks, goods1, counts1, goods2, counts2) FROM '$$PATH$$/3663.dat';

--
-- Data for Name: events_xmas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_xmas (start_date, end_date, reward_id, reward_count) FROM stdin;
\.
COPY public.events_xmas (start_date, end_date, reward_id, reward_count) FROM '$$PATH$$/3664.dat';

--
-- Data for Name: friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friends (owner_id, friend_id, state, removed) FROM stdin;
\.
COPY public.friends (owner_id, friend_id, state, removed) FROM '$$PATH$$/3665.dat';

--
-- Data for Name: info_basic_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_basic_items (acquisition, item_id, item_name, item_count, item_equip) FROM stdin;
\.
COPY public.info_basic_items (acquisition, item_id, item_name, item_count, item_equip) FROM '$$PATH$$/3666.dat';

--
-- Data for Name: info_channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_channels (server_id, channel_id, type, announce) FROM stdin;
\.
COPY public.info_channels (server_id, channel_id, type, announce) FROM '$$PATH$$/3667.dat';

--
-- Data for Name: info_cupons_flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_cupons_flags (item_id, effect_flag) FROM stdin;
\.
COPY public.info_cupons_flags (item_id, effect_flag) FROM '$$PATH$$/3668.dat';

--
-- Data for Name: info_gameservers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_gameservers (id, state, type, ip, port, sync_port, max_players) FROM stdin;
\.
COPY public.info_gameservers (id, state, type, ip, port, sync_port, max_players) FROM '$$PATH$$/3669.dat';

--
-- Data for Name: info_login_configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_login_configs (config_id, "onlyGM", missions, "UserFileList", "Version", "GiftSystem", "ExitURL") FROM stdin;
\.
COPY public.info_login_configs (config_id, "onlyGM", missions, "UserFileList", "Version", "GiftSystem", "ExitURL") FROM '$$PATH$$/3670.dat';

--
-- Data for Name: info_missions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_missions (mission_id, price, enable) FROM stdin;
\.
COPY public.info_missions (mission_id, price, enable) FROM '$$PATH$$/3671.dat';

--
-- Data for Name: info_rank_awards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_rank_awards (rank_id, item_id, item_name, item_count, item_equip) FROM stdin;
\.
COPY public.info_rank_awards (rank_id, item_id, item_name, item_count, item_equip) FROM '$$PATH$$/3672.dat';

--
-- Data for Name: item_code; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_code (id, item_id, item_name, item_count, item_code, cash, type, qty, valid_date, date_created, date_updated) FROM stdin;
\.
COPY public.item_code (id, item_id, item_name, item_count, item_code, cash, type, qty, valid_date, date_created, date_updated) FROM '$$PATH$$/3673.dat';

--
-- Data for Name: item_goods_sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_goods_sets (set_id, set_name, visible) FROM stdin;
\.
COPY public.item_goods_sets (set_id, set_name, visible) FROM '$$PATH$$/3674.dat';

--
-- Data for Name: item_goods_sets_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_goods_sets_items (set_id, item_id, item_name, item_consume, item_count, price_money, price_points) FROM stdin;
\.
COPY public.item_goods_sets_items (set_id, item_id, item_name, item_consume, item_count, price_money, price_points) FROM '$$PATH$$/3675.dat';

--
-- Data for Name: item_voucher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_voucher (id, voucher_item, voucher_cash, voucher_webcoin, voucher_code, active) FROM stdin;
\.
COPY public.item_voucher (id, voucher_item, voucher_cash, voucher_webcoin, voucher_code, active) FROM '$$PATH$$/3676.dat';

--
-- Data for Name: launcher_launcherkey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.launcher_launcherkey (id, key, status) FROM stdin;
\.
COPY public.launcher_launcherkey (id, key, status) FROM '$$PATH$$/3677.dat';

--
-- Data for Name: launcher_loghistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.launcher_loghistory (id, ip_address, date_created) FROM stdin;
\.
COPY public.launcher_loghistory (id, ip_address, date_created) FROM '$$PATH$$/3678.dat';

--
-- Data for Name: launcher_version_control; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.launcher_version_control (id, ip_address, hwid, current_patch_version, current_launcher_version, date_created, date_updated) FROM stdin;
\.
COPY public.launcher_version_control (id, ip_address, hwid, current_patch_version, current_launcher_version, date_created, date_updated) FROM '$$PATH$$/3679.dat';

--
-- Data for Name: nick_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nick_history (player_id, from_nick, to_nick, change_date, motive) FROM stdin;
\.
COPY public.nick_history (player_id, from_nick, to_nick, change_date, motive) FROM '$$PATH$$/3680.dat';

--
-- Data for Name: player_bonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_bonus (player_id, bonuses, sightcolor, freepass, fakerank, fakenick) FROM stdin;
\.
COPY public.player_bonus (player_id, bonuses, sightcolor, freepass, fakerank, fakenick) FROM '$$PATH$$/3681.dat';

--
-- Data for Name: player_configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_configs (owner_id, config, sangue, mira, mao, audio1, audio2, audio_enable, sensibilidade, visao, mouse_invertido, msgconvite, chatsussurro, macro, macro_1, macro_2, macro_3, macro_4, macro_5, keys) FROM stdin;
\.
COPY public.player_configs (owner_id, config, sangue, mira, mao, audio1, audio2, audio_enable, sensibilidade, visao, mouse_invertido, msgconvite, chatsussurro, macro, macro_1, macro_2, macro_3, macro_4, macro_5, keys) FROM '$$PATH$$/3682.dat';

--
-- Data for Name: player_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_events (player_id, last_visit_event_id, last_visit_sequence1, last_visit_sequence2, next_visit_date, last_xmas_reward_date, last_playtime_date, last_playtime_value, last_playtime_finish, last_login_date, last_quest_date, last_quest_finish) FROM stdin;
\.
COPY public.player_events (player_id, last_visit_event_id, last_visit_sequence1, last_visit_sequence2, next_visit_date, last_xmas_reward_date, last_playtime_date, last_playtime_value, last_playtime_finish, last_login_date, last_quest_date, last_quest_finish) FROM '$$PATH$$/3683.dat';

--
-- Data for Name: player_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_items (object_id, owner_id, item_id, item_name, count, category, equip) FROM stdin;
\.
COPY public.player_items (object_id, owner_id, item_id, item_name, count, category, equip) FROM '$$PATH$$/3684.dat';

--
-- Data for Name: player_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_messages (object_id, owner_id, sender_id, clan_id, sender_name, text, type, state, expire, cb) FROM stdin;
\.
COPY public.player_messages (object_id, owner_id, sender_id, clan_id, sender_name, text, type, state, expire, cb) FROM '$$PATH$$/3685.dat';

--
-- Data for Name: player_missions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_missions (owner_id, actual_mission, card1, card2, card3, card4, mission1, mission2, mission3, mission4) FROM stdin;
\.
COPY public.player_missions (owner_id, actual_mission, card1, card2, card3, card4, mission1, mission2, mission3, mission4) FROM '$$PATH$$/3686.dat';

--
-- Data for Name: player_titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_titles (owner_id, titleequiped1, titleequiped2, titleequiped3, titleflags, titleslots) FROM stdin;
\.
COPY public.player_titles (owner_id, titleequiped1, titleequiped2, titleequiped3, titleflags, titleslots) FROM '$$PATH$$/3687.dat';

--
-- Data for Name: shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM stdin;
\.
COPY public.shop (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM '$$PATH$$/3712.dat';

--
-- Data for Name: shop_set; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_set (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM stdin;
\.
COPY public.shop_set (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM '$$PATH$$/3688.dat';

--
-- Data for Name: shopunbuild; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopunbuild (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM stdin;
\.
COPY public.shopunbuild (good_id, item_id, item_name, price_gold, price_cash, count, buy_type, buy_type2, buy_type3, tag, title, visibility) FROM '$$PATH$$/3713.dat';

--
-- Data for Name: tournament_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tournament_rules (tournament, name_exception) FROM stdin;
\.
COPY public.tournament_rules (tournament, name_exception) FROM '$$PATH$$/3689.dat';

--
-- Data for Name: trade_market; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trade_market (id, item_id, item_name, item_category, item_duration, item_price, item_owner, day, month, year, valid_duration) FROM stdin;
\.
COPY public.trade_market (id, item_id, item_name, item_category, item_duration, item_price, item_owner, day, month, year, valid_duration) FROM '$$PATH$$/3690.dat';

--
-- Data for Name: web_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_api_keys (id, user_id, api_key, level, ignore_limits, is_private_key, ip_addresses, date_created) FROM stdin;
\.
COPY public.web_api_keys (id, user_id, api_key, level, ignore_limits, is_private_key, ip_addresses, date_created) FROM '$$PATH$$/3691.dat';

--
-- Data for Name: web_api_limits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_api_limits (id, uri, count, hour_started, api_key) FROM stdin;
\.
COPY public.web_api_limits (id, uri, count, hour_started, api_key) FROM '$$PATH$$/3692.dat';

--
-- Data for Name: web_api_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_api_logs (id, uri, method, params, api_key, ip_address, "time", rtime, authorized, response_code) FROM stdin;
\.
COPY public.web_api_logs (id, uri, method, params, api_key, ip_address, "time", rtime, authorized, response_code) FROM '$$PATH$$/3693.dat';

--
-- Data for Name: web_bandwith; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_bandwith (id, total_point_used, total_cash_used, total_item_buyed, max_point_used, max_cash_used, max_item_buyed, date_updated) FROM stdin;
\.
COPY public.web_bandwith (id, total_point_used, total_cash_used, total_item_buyed, max_point_used, max_cash_used, max_item_buyed, date_updated) FROM '$$PATH$$/3694.dat';

--
-- Data for Name: web_battlepass; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_battlepass (id, battlepass_name, battlepass_type, battlepass_reward, battlepass_status, date_created, date_updated) FROM stdin;
\.
COPY public.web_battlepass (id, battlepass_name, battlepass_type, battlepass_reward, battlepass_status, date_created, date_updated) FROM '$$PATH$$/3695.dat';

--
-- Data for Name: web_battlepass_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_battlepass_list (id, battlepass_level, battlepass_totalexp, battlepass_reward_item, battlepass_reward_duration, battlepass_type, battlepass_total_claimed, date_created, date_updated) FROM stdin;
\.
COPY public.web_battlepass_list (id, battlepass_level, battlepass_totalexp, battlepass_reward_item, battlepass_reward_duration, battlepass_type, battlepass_total_claimed, date_created, date_updated) FROM '$$PATH$$/3696.dat';

--
-- Data for Name: web_customtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_customtoken (id, csrf_token, ip_address, date_created, date_updated) FROM stdin;
\.
COPY public.web_customtoken (id, csrf_token, ip_address, date_created, date_updated) FROM '$$PATH$$/3697.dat';

--
-- Data for Name: web_download_clientlauncher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_download_clientlauncher (id, file_name, file_description, file_size, file_total_download, file_cloud_type, file_type, file_url, date_created, date_updated) FROM stdin;
\.
COPY public.web_download_clientlauncher (id, file_name, file_description, file_size, file_total_download, file_cloud_type, file_type, file_url, date_created, date_updated) FROM '$$PATH$$/3698.dat';

--
-- Data for Name: web_exchangeticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_exchangeticket (id, item_id, item_name, item_count, item_price, item_img, stock, visible) FROM stdin;
\.
COPY public.web_exchangeticket (id, item_id, item_name, item_count, item_price, item_img, stock, visible) FROM '$$PATH$$/3699.dat';

--
-- Data for Name: web_ipbanned; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_ipbanned (ip_address) FROM stdin;
\.
COPY public.web_ipbanned (ip_address) FROM '$$PATH$$/3700.dat';

--
-- Data for Name: web_log_forgotpassword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_log_forgotpassword (id, email, secret_token, valid_date, status, date_created, date_updated) FROM stdin;
\.
COPY public.web_log_forgotpassword (id, email, secret_token, valid_date, status, date_created, date_updated) FROM '$$PATH$$/3701.dat';

--
-- Data for Name: web_log_general; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_log_general (operating_system, browser, ip_address, visited_page, actions, total_visit, last_visit) FROM stdin;
\.
COPY public.web_log_general (operating_system, browser, ip_address, visited_page, actions, total_visit, last_visit) FROM '$$PATH$$/3702.dat';

--
-- Data for Name: web_log_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_log_shop (id, owner_id, item_id, count, date_created, date_updated) FROM stdin;
\.
COPY public.web_log_shop (id, owner_id, item_id, count, date_created, date_updated) FROM '$$PATH$$/3703.dat';

--
-- Data for Name: web_log_verifyaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_log_verifyaccount (id, email, secret_token, valid_date, status, date_created, date_updated) FROM stdin;
\.
COPY public.web_log_verifyaccount (id, email, secret_token, valid_date, status, date_created, date_updated) FROM '$$PATH$$/3704.dat';

--
-- Data for Name: web_packshop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_packshop (id, package_name, package_reward, package_duration, package_qty, package_price, package_status, date_created, date_updated) FROM stdin;
\.
COPY public.web_packshop (id, package_name, package_reward, package_duration, package_qty, package_price, package_status, date_created, date_updated) FROM '$$PATH$$/3705.dat';

--
-- Data for Name: web_quickslide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_quickslide (id, quickslide_title, quickslide_description, quickslide_img, quickslide_date, quickslide_state) FROM stdin;
\.
COPY public.web_quickslide (id, quickslide_title, quickslide_description, quickslide_img, quickslide_date, quickslide_state) FROM '$$PATH$$/3706.dat';

--
-- Data for Name: web_rankinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_rankinfo (id, rank, rank_name, expend) FROM stdin;
\.
COPY public.web_rankinfo (id, rank, rank_name, expend) FROM '$$PATH$$/3707.dat';

--
-- Data for Name: web_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_settings (id, meta_author, meta_description, meta_keywords, project_name, project_logo, project_icon, running_text, server_condition, website_condition, discord_embed_link, facebook_embed_link, instagram_embed_link, youtube_embed_link, webshop, trade_market, exchange_ticket, voucher, forgot_password, register, attendance, redeemcode, change_email, event_ticket, email_verification, google_register, web_log, packshop, api_authorization_key) FROM stdin;
\.
COPY public.web_settings (id, meta_author, meta_description, meta_keywords, project_name, project_logo, project_icon, running_text, server_condition, website_condition, discord_embed_link, facebook_embed_link, instagram_embed_link, youtube_embed_link, webshop, trade_market, exchange_ticket, voucher, forgot_password, register, attendance, redeemcode, change_email, event_ticket, email_verification, google_register, web_log, packshop, api_authorization_key) FROM '$$PATH$$/3708.dat';

--
-- Data for Name: web_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_shop (id, item_id, item_name, item_image, item_description, item_count_option, item_price_option, item_stock, item_visible, date_created, date_updated) FROM stdin;
\.
COPY public.web_shop (id, item_id, item_name, item_image, item_description, item_count_option, item_price_option, item_stock, item_visible, date_created, date_updated) FROM '$$PATH$$/3709.dat';

--
-- Data for Name: web_tokenkey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_tokenkey (id, token, is_valid) FROM stdin;
\.
COPY public.web_tokenkey (id, token, is_valid) FROM '$$PATH$$/3710.dat';

--
-- Data for Name: webshop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.webshop (id, webshop_itemid, webshop_itemname, webshop_itemdescription, webshop_itemrating, webshop_itemcategory, webshop_itemstatus, webshop_totalbuy, webshop_itemimg, webshop_itemcount_3days, webshop_itemprice_3days, webshop_itemcount_7days, webshop_itemprice_7days, webshop_itemcount_30days, webshop_itemprice_30days, webshop_itemcount_permanent, webshop_itemprice_permanent) FROM stdin;
\.
COPY public.webshop (id, webshop_itemid, webshop_itemname, webshop_itemdescription, webshop_itemrating, webshop_itemcategory, webshop_itemstatus, webshop_totalbuy, webshop_itemimg, webshop_itemcount_3days, webshop_itemprice_3days, webshop_itemcount_7days, webshop_itemprice_7days, webshop_itemcount_30days, webshop_itemprice_30days, webshop_itemcount_permanent, webshop_itemprice_permanent) FROM '$$PATH$$/3711.dat';

--
-- Name: account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_id_seq', 43, true);


--
-- Name: api_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_keys_id_seq', 3, true);


--
-- Name: api_keys_limit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_keys_limit_id_seq', 3, true);


--
-- Name: api_keys_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_keys_logs_id_seq', 6530, true);


--
-- Name: auto_ban_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auto_ban_seq', 5, true);


--
-- Name: ban_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ban_seq', 5, false);


--
-- Name: captcha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.captcha_id_seq', 3, true);


--
-- Name: channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.channels_id_seq', 5, false);


--
-- Name: check_event_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.check_event_seq', 5, true);


--
-- Name: check_user_attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.check_user_attendance_id_seq', 37, true);


--
-- Name: check_user_itemcode_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.check_user_itemcode_seq', 45, true);


--
-- Name: check_user_voucher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.check_user_voucher_id_seq', 12, true);


--
-- Name: clan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clan_seq', 6, true);


--
-- Name: event_attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_attendance_id_seq', 140, true);


--
-- Name: events_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_login_id_seq', 7, true);


--
-- Name: gameservers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gameservers_id_seq', 5, false);


--
-- Name: gift_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gift_id_seq', 5, true);


--
-- Name: ipsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ipsystem_id_seq', 5, false);


--
-- Name: item_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_code_id_seq', 2, true);


--
-- Name: item_voucher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_voucher_id_seq', 9, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 311, true);


--
-- Name: jogador_amigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jogador_amigo_seq', 5, true);


--
-- Name: jogador_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jogador_inventario_seq', 5, true);


--
-- Name: jogador_mensagem_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jogador_mensagem_seq', 5, true);


--
-- Name: launcher_launcherkey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.launcher_launcherkey_id_seq', 69, true);


--
-- Name: launcher_loghistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.launcher_loghistory_id_seq', 14, true);


--
-- Name: launcher_version_control_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.launcher_version_control_id_seq', 3, false);


--
-- Name: loja_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loja_seq', 8, true);


--
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.message_id_seq', 11, true);


--
-- Name: player_characters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.player_characters_id_seq', 5, true);


--
-- Name: player_eqipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.player_eqipment_id_seq', 5, true);


--
-- Name: player_friends_player_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.player_friends_player_account_id_seq', 5, false);


--
-- Name: player_topups_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.player_topups_seq', 9, true);


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.players_id_seq', 5, true);


--
-- Name: server_license_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.server_license_id_seq', 2, false);


--
-- Name: storage_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.storage_seq', 5, true);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.templates_id_seq', 5, false);


--
-- Name: trade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trade_id_seq', 14, true);


--
-- Name: web_adminpanel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_adminpanel_id_seq', 198, true);


--
-- Name: web_all_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_all_log_id_seq', 5, false);


--
-- Name: web_api_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_api_data_id_seq', 3, false);


--
-- Name: web_battlepass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_battlepass_id_seq', 3, true);


--
-- Name: web_battlepass_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_battlepass_list_id_seq', 5, true);


--
-- Name: web_download_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_download_seq', 22, true);


--
-- Name: web_email_confirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_email_confirmation_id_seq', 10, true);


--
-- Name: web_exchangeticket_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_exchangeticket_seq', 13, true);


--
-- Name: web_giftitem_log_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_giftitem_log_seq', 12, true);


--
-- Name: web_launcher_ipaddress_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_launcher_ipaddress_id', 5, true);


--
-- Name: web_log_verifyaccount_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_log_verifyaccount_id_sequence', 5, true);


--
-- Name: web_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_news_id_seq', 19, true);


--
-- Name: web_packshop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_packshop_id_seq', 2, true);


--
-- Name: web_quickslide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_quickslide_id_seq', 23, true);


--
-- Name: web_rankinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_rankinfo_id_seq', 68, true);


--
-- Name: web_recharge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_recharge_id_seq', 25, true);


--
-- Name: web_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_report_id_seq', 9, true);


--
-- Name: web_reset_password_sequence_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_reset_password_sequence_id', 8, true);


--
-- Name: web_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_shop_id_seq', 2, false);


--
-- Name: web_shop_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_shop_log_id_seq', 2, false);


--
-- Name: web_tokenkey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_tokenkey_id_seq', 134, true);


--
-- Name: webdata_news_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webdata_news_seq', 5, true);


--
-- Name: webshop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webshop_id_seq', 21, true);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (player_id);


--
-- Name: check_user_attendance check_user_attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_user_attendance
    ADD CONSTRAINT check_user_attendance_pkey PRIMARY KEY (id);


--
-- Name: check_user_voucher check_user_voucher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_user_voucher
    ADD CONSTRAINT check_user_voucher_pkey PRIMARY KEY (id);


--
-- Name: clan_data clan_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clan_data
    ADD CONSTRAINT clan_data_pkey PRIMARY KEY (clan_id);


--
-- Name: events_attendance events_attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events_attendance
    ADD CONSTRAINT events_attendance_pkey PRIMARY KEY (id);


--
-- Name: item_code item_code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_code
    ADD CONSTRAINT item_code_pkey PRIMARY KEY (id);


--
-- Name: item_goods_sets_items item_goods_sets_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_goods_sets_items
    ADD CONSTRAINT item_goods_sets_items_pkey PRIMARY KEY (set_id, item_id);


--
-- Name: item_goods_sets item_goods_sets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_goods_sets
    ADD CONSTRAINT item_goods_sets_pkey PRIMARY KEY (set_id);


--
-- Name: item_voucher item_voucher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_voucher
    ADD CONSTRAINT item_voucher_pkey PRIMARY KEY (id);


--
-- Name: web_api_keys keys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_api_keys
    ADD CONSTRAINT keys_pkey PRIMARY KEY (id);


--
-- Name: launcher_launcherkey launcher_launcherkey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launcher_launcherkey
    ADD CONSTRAINT launcher_launcherkey_pkey PRIMARY KEY (id);


--
-- Name: launcher_loghistory launcher_loghistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launcher_loghistory
    ADD CONSTRAINT launcher_loghistory_pkey PRIMARY KEY (id);


--
-- Name: launcher_version_control launcher_version_control_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launcher_version_control
    ADD CONSTRAINT launcher_version_control_pkey PRIMARY KEY (id);


--
-- Name: web_api_limits limits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_api_limits
    ADD CONSTRAINT limits_pkey PRIMARY KEY (id);


--
-- Name: player_configs player_configs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player_configs
    ADD CONSTRAINT player_configs_pkey PRIMARY KEY (owner_id);


--
-- Name: trade_market trade_market_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trade_market
    ADD CONSTRAINT trade_market_pkey PRIMARY KEY (id);


--
-- Name: web_api_logs web_api_logs2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_api_logs
    ADD CONSTRAINT web_api_logs2_pkey PRIMARY KEY (id);


--
-- Name: web_bandwith web_bandwith_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_bandwith
    ADD CONSTRAINT web_bandwith_pkey PRIMARY KEY (id);


--
-- Name: web_battlepass_list web_battlepass_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_battlepass_list
    ADD CONSTRAINT web_battlepass_list_pkey PRIMARY KEY (id);


--
-- Name: web_battlepass web_battlepass_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_battlepass
    ADD CONSTRAINT web_battlepass_pkey PRIMARY KEY (id);


--
-- Name: web_customtoken web_customtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_customtoken
    ADD CONSTRAINT web_customtoken_pkey PRIMARY KEY (id);


--
-- Name: web_download_clientlauncher web_download_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_download_clientlauncher
    ADD CONSTRAINT web_download_pkey PRIMARY KEY (id);


--
-- Name: web_exchangeticket web_exchangeticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_exchangeticket
    ADD CONSTRAINT web_exchangeticket_pkey PRIMARY KEY (id);


--
-- Name: web_log_forgotpassword web_log_resetpassword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_log_forgotpassword
    ADD CONSTRAINT web_log_resetpassword_pkey PRIMARY KEY (id);


--
-- Name: web_log_verifyaccount web_log_verifyaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_log_verifyaccount
    ADD CONSTRAINT web_log_verifyaccount_pkey PRIMARY KEY (id);


--
-- Name: web_packshop web_packshop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_packshop
    ADD CONSTRAINT web_packshop_pkey PRIMARY KEY (id);


--
-- Name: web_quickslide web_quickslide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_quickslide
    ADD CONSTRAINT web_quickslide_pkey PRIMARY KEY (id);


--
-- Name: web_rankinfo web_rankinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_rankinfo
    ADD CONSTRAINT web_rankinfo_pkey PRIMARY KEY (id);


--
-- Name: web_settings web_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_settings
    ADD CONSTRAINT web_settings_pkey PRIMARY KEY (id);


--
-- Name: web_log_shop web_shop_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_log_shop
    ADD CONSTRAINT web_shop_log_pkey PRIMARY KEY (id);


--
-- Name: web_shop web_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_shop
    ADD CONSTRAINT web_shop_pkey PRIMARY KEY (id);


--
-- Name: web_tokenkey web_tokenkey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_tokenkey
    ADD CONSTRAINT web_tokenkey_pkey PRIMARY KEY (id);


--
-- Name: webshop webshop2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webshop
    ADD CONSTRAINT webshop2_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     