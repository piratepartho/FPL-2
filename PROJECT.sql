/*
 Navicat Premium Data Transfer

 Source Server         : PROJECT
 Source Server Type    : Oracle
 Source Server Version : 190000
 Source Host           : localhost:1521
 Source Schema         : PROJECT

 Target Server Type    : Oracle
 Target Server Version : 190000
 File Encoding         : 65001

 Date: 19/02/2022 14:27:30
*/


-- ----------------------------
-- Table structure for BENCH_PLAYER
-- ----------------------------
DROP TABLE "PROJECT"."BENCH_PLAYER";
CREATE TABLE "PROJECT"."BENCH_PLAYER" (
  "USER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "GAMEWEEK" NUMBER(5,0) VISIBLE NOT NULL,
  "PLAYER_ID" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of BENCH_PLAYER
-- ----------------------------

-- ----------------------------
-- Table structure for FIELD_PLAYER
-- ----------------------------
DROP TABLE "PROJECT"."FIELD_PLAYER";
CREATE TABLE "PROJECT"."FIELD_PLAYER" (
  "USER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "GAMEWEEK" NUMBER(5,0) VISIBLE NOT NULL,
  "PLAYER_ID" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FIELD_PLAYER
-- ----------------------------
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '2');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '6');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '11');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '27');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '119');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '124');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '180');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '227');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '241');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '529');
INSERT INTO "PROJECT"."FIELD_PLAYER" VALUES ('1', '1', '605');

-- ----------------------------
-- Table structure for FIXTURE
-- ----------------------------
DROP TABLE "PROJECT"."FIXTURE";
CREATE TABLE "PROJECT"."FIXTURE" (
  "MATCH_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "HOME_TEAM_SCORE" NUMBER(5,0) VISIBLE NOT NULL,
  "AWAY_TEAM_SCORE" NUMBER(5,0) VISIBLE NOT NULL,
  "KICKOFF_TIME" DATE VISIBLE,
  "GAMEWEEK" NUMBER(5,0) VISIBLE NOT NULL,
  "HOME_TEAM" NUMBER(5,0) VISIBLE NOT NULL,
  "AWAY_TEAM" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FIXTURE
-- ----------------------------
INSERT INTO "PROJECT"."FIXTURE" VALUES ('1', '2', '1', TO_DATE('2022-02-11 12:34:59', 'SYYYY-MM-DD HH24:MI:SS'), '1', '3', '1');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('2', '2', '0', TO_DATE('2022-02-11 12:35:10', 'SYYYY-MM-DD HH24:MI:SS'), '1', '13', '10');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('3', '1', '2', TO_DATE('2022-02-11 12:35:18', 'SYYYY-MM-DD HH24:MI:SS'), '1', '9', '20');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('4', '3', '1', TO_DATE('2022-02-11 12:35:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', '6', '7');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('5', '1', '1', TO_DATE('2022-02-11 12:35:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '18', '2');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('6', '2', '1', TO_DATE('2022-02-11 12:35:41', 'SYYYY-MM-DD HH24:MI:SS'), '1', '8', '16');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('7', '2', '2', TO_DATE('2022-02-11 12:35:47', 'SYYYY-MM-DD HH24:MI:SS'), '1', '5', '4');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('8', '1', '1', TO_DATE('2022-02-11 12:36:09', 'SYYYY-MM-DD HH24:MI:SS'), '1', '15', '11');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('9', '0', '1', TO_DATE('2022-02-11 12:36:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', '14', '19');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('10', '1', '0', TO_DATE('2022-02-11 12:36:45', 'SYYYY-MM-DD HH24:MI:SS'), '1', '17', '12');
INSERT INTO "PROJECT"."FIXTURE" VALUES ('11', '0', '0', TO_DATE('2022-02-14 21:31:52', 'SYYYY-MM-DD HH24:MI:SS'), '2', '1', '10');

-- ----------------------------
-- Table structure for GAMEWEEK
-- ----------------------------
DROP TABLE "PROJECT"."GAMEWEEK";
CREATE TABLE "PROJECT"."GAMEWEEK" (
  "CURR_WEEK" NUMBER VISIBLE DEFAULT 1
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of GAMEWEEK
-- ----------------------------
INSERT INTO "PROJECT"."GAMEWEEK" VALUES ('1');

-- ----------------------------
-- Table structure for H2H_FIXTURES
-- ----------------------------
DROP TABLE "PROJECT"."H2H_FIXTURES";
CREATE TABLE "PROJECT"."H2H_FIXTURES" (
  "LEAGUE_CODE" NUMBER(5,0) VISIBLE NOT NULL,
  "USER_A" NUMBER(5,0) VISIBLE NOT NULL,
  "USER_B" NUMBER(5,0) VISIBLE NOT NULL,
  "GAMEWEEK" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of H2H_FIXTURES
-- ----------------------------

-- ----------------------------
-- Table structure for H2H_LEAGUE
-- ----------------------------
DROP TABLE "PROJECT"."H2H_LEAGUE";
CREATE TABLE "PROJECT"."H2H_LEAGUE" (
  "LEAGUE_CODE" NUMBER(5,0) VISIBLE NOT NULL,
  "LEAGUE_NAME" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "START_GW" NUMBER(5,0) VISIBLE NOT NULL,
  "REQUIRED_TEAMS" NUMBER(5,0) VISIBLE NOT NULL,
  "ADMIN" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of H2H_LEAGUE
-- ----------------------------

-- ----------------------------
-- Table structure for H2H_TEAMS
-- ----------------------------
DROP TABLE "PROJECT"."H2H_TEAMS";
CREATE TABLE "PROJECT"."H2H_TEAMS" (
  "LEAGUE_CODE" NUMBER(5,0) VISIBLE NOT NULL,
  "USER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "POINTS" NUMBER(5,0) VISIBLE NOT NULL,
  "WIN" NUMBER(5,0) VISIBLE NOT NULL,
  "LOSE" NUMBER(5,0) VISIBLE NOT NULL,
  "DRAW" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of H2H_TEAMS
-- ----------------------------

-- ----------------------------
-- Table structure for LEAGUE
-- ----------------------------
DROP TABLE "PROJECT"."LEAGUE";
CREATE TABLE "PROJECT"."LEAGUE" (
  "LEAGUE_CODE" NUMBER(5,0) VISIBLE NOT NULL,
  "LEAGUE_NAME" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "START_GW" NUMBER(5,0) VISIBLE NOT NULL,
  "ADMIN" NUMBER(5,0) VISIBLE NOT NULL,
  "AVERAGE_POINTS" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of LEAGUE
-- ----------------------------
INSERT INTO "PROJECT"."LEAGUE" VALUES ('9', 'cse', '1', '2', '0');
INSERT INTO "PROJECT"."LEAGUE" VALUES ('8', 'Real Madrid', '1', '1', '0');
INSERT INTO "PROJECT"."LEAGUE" VALUES ('3', 'abc', '1', '1', '0');
INSERT INTO "PROJECT"."LEAGUE" VALUES ('10', '1234', '1', '2', '0');
INSERT INTO "PROJECT"."LEAGUE" VALUES ('11', 'Evans League', '1', '2', '0');

-- ----------------------------
-- Table structure for LEAGUE_TEAMS
-- ----------------------------
DROP TABLE "PROJECT"."LEAGUE_TEAMS";
CREATE TABLE "PROJECT"."LEAGUE_TEAMS" (
  "LEAGUE_CODE" NUMBER(5,0) VISIBLE NOT NULL,
  "USER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "JOINED_GW" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of LEAGUE_TEAMS
-- ----------------------------
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('8', '1', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('3', '2', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('3', '1', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('10', '2', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('11', '2', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('9', '2', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('8', '2', '1');
INSERT INTO "PROJECT"."LEAGUE_TEAMS" VALUES ('11', '1', '1');

-- ----------------------------
-- Table structure for PLAYER
-- ----------------------------
DROP TABLE "PROJECT"."PLAYER";
CREATE TABLE "PROJECT"."PLAYER" (
  "PLAYER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "LAST_NAME" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "POSITION" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "SQUAD_NUMBER" NUMBER(5,0) VISIBLE,
  "TOTAL_POINTS" NUMBER(5,0) VISIBLE,
  "COST" NUMBER(5,0) VISIBLE NOT NULL,
  "TEAM_ID" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PLAYER
-- ----------------------------
INSERT INTO "PROJECT"."PLAYER" VALUES ('508', 'Samuel', 'Edozie', 'Midfielder', '0', '0', '47', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('566', 'Tommy', 'Doyle', 'Midfielder', '0', '0', '45', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('605', 'Romeo', 'Lavia', 'Midfielder', '0', '0', '44', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('629', 'James', 'McAtee', 'Midfielder', '0', '0', '44', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('271', 'Nemanja', 'Matic', 'Midfielder', '0', '1', '43', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('272', 'Paul', 'Pogba', 'Midfielder', '0', '1', '74', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('274', 'Frederico', 'Rodrigues de Paula Santos', 'Midfielder', '0', '1', '49', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('276', 'Jesse', 'Lingard', 'Midfielder', '0', '1', '67', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('277', 'Bruno Miguel', 'Borges Fernandes', 'Midfielder', '0', '1', '117', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('281', 'Marcus', 'Rashford', 'Midfielder', '0', '1', '94', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('285', 'Scott', 'McTominay', 'Midfielder', '0', '1', '54', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('289', 'Mason', 'Greenwood', 'Midfielder', '0', '1', '72', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('459', 'Juan', 'Mata', 'Midfielder', '0', '1', '47', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('485', 'Jadon', 'Sancho', 'Midfielder', '0', '1', '89', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('511', 'Andreas', 'Pereira', 'Midfielder', '0', '1', '50', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('512', 'Anthony', 'Elanga', 'Midfielder', '0', '1', '48', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('636', 'Amad', 'Diallo', 'Midfielder', '0', '1', '50', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('19', 'Joseph', 'Willock', 'Midfielder', '0', '0', '57', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('291', 'Jonjo', 'Shelvey', 'Midfielder', '0', '0', '53', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('297', 'Jeff', 'Hendrick', 'Midfielder', '0', '0', '48', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('298', 'Ryan', 'Fraser', 'Midfielder', '0', '0', '53', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('304', 'Jacob', 'Murphy', 'Midfielder', '0', '0', '47', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('306', 'Isaac', 'Hayden', 'Midfielder', '0', '0', '45', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('308', 'Miguel', 'Almirón', 'Midfielder', '0', '0', '51', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('309', 'Sean', 'Longstaff', 'Midfielder', '0', '0', '44', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('312', 'Matthew', 'Longstaff', 'Midfielder', '0', '0', '45', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('599', 'Joe', 'White', 'Midfielder', '0', '0', '44', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('609', 'Elliot', 'Anderson', 'Midfielder', '0', '0', '45', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('697', 'Bruno', 'Guimarães Rodriguez Moura', 'Midfielder', '0', '0', '50', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('145', 'Billy', 'Gilmour', 'Midfielder', '0', '0', '43', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('316', 'Marco', 'Stiepermann', 'Midfielder', '0', '0', '50', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('317', 'Lukas', 'Rupp', 'Midfielder', '0', '0', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('318', 'Kenny', 'McLean', 'Midfielder', '0', '0', '49', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('320', 'Onel', 'Hernández', 'Midfielder', '0', '0', '49', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('323', 'Kieran', 'Dowell', 'Midfielder', '0', '0', '51', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('325', 'Todd', 'Cantwell', 'Midfielder', '0', '0', '53', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('328', 'Przemyslaw', 'Placheta', 'Midfielder', '0', '0', '47', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('330', 'Josh', 'Martin', 'Midfielder', '0', '0', '50', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('449', 'Milot', 'Rashica', 'Midfielder', '0', '0', '52', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('471', 'Pierre', 'Lees-Melou', 'Midfielder', '0', '0', '48', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('528', 'Christos', 'Tzolis', 'Midfielder', '0', '0', '48', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('581', 'Mathias', 'Normann', 'Midfielder', '0', '0', '45', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('648', 'Jonathan', 'Rowe', 'Midfielder', '0', '5', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('683', 'Liam', 'Gibbs', 'Midfielder', '0', '0', '45', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('332', 'Theo', 'Walcott', 'Midfielder', '0', '0', '58', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('335', 'Oriol', 'Romeu Vidal', 'Midfielder', '0', '0', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('336', 'Nathan', 'Redmond', 'Midfielder', '0', '0', '59', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('339', 'Stuart', 'Armstrong', 'Midfielder', '0', '0', '58', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('341', 'James', 'Ward-Prowse', 'Midfielder', '0', '0', '63', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('346', 'Nathan', 'Tella', 'Midfielder', '0', '0', '47', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('347', 'William', 'Smallbone', 'Midfielder', '0', '0', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('349', 'Ibrahima', 'Diallo', 'Midfielder', '0', '0', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('350', 'Moussa', 'Djenepo', 'Midfielder', '0', '0', '52', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('517', 'Mohamed', 'Elyounoussi', 'Midfielder', '0', '0', '54', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('680', 'Kgaogelo', 'Chauke', 'Midfielder', '0', '0', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('356', 'Erik', 'Lamela', 'Midfielder', '0', '8', '60', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('359', 'Heung-Min', 'Son', 'Midfielder', '0', '9', '106', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('362', 'Lucas', 'Rodrigues Moura da Silva', 'Midfielder', '0', '6', '65', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('365', 'Pierre-Emile', 'Højbjerg', 'Midfielder', '0', '2', '49', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('366', 'Harry', 'Winks', 'Midfielder', '0', '2', '44', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('369', 'Steven', 'Bergwijn', 'Midfielder', '0', '2', '59', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('372', 'Giovani', 'Lo Celso', 'Midfielder', '0', '2', '59', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('373', 'Oliver', 'Skipp', 'Midfielder', '0', '2', '44', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('375', 'Tanguy', 'Ndombele', 'Midfielder', '0', '2', '57', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('487', 'Bryan', 'Gil Salvatierra', 'Midfielder', '0', '2', '57', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('597', 'Dilan', 'Markanday', 'Midfielder', '0', '2', '45', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('668', 'Harvey', 'White', 'Midfielder', '0', '2', '44', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('701', 'Dejan', 'Kulusevski', 'Midfielder', '0', '2', '60', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('702', 'Rodrigo', 'Bentancur', 'Midfielder', '0', '2', '50', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('354', 'Moussa', 'Sissoko', 'Midfielder', '0', '2', '44', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('378', 'Dan', 'Gosling', 'Midfielder', '0', '2', '47', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('381', 'Tom', 'Cleverley', 'Midfielder', '0', '2', '48', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('385', 'Nathaniel', 'Chalobah', 'Midfielder', '0', '2', '50', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('391', 'Ken', 'Sema', 'Midfielder', '0', '2', '52', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('392', 'Philip', 'Zinckernagel', 'Midfielder', '0', '2', '55', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('394', 'Ayotomiwa', 'Dele-Bashiru', 'Midfielder', '0', '2', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('397', 'Domingos', 'Quina', 'Midfielder', '0', '2', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('399', 'Ismaila', 'Sarr', 'Midfielder', '0', '2', '57', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('402', 'Joseph', 'Hungbo', 'Midfielder', '0', '2', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('403', 'Imrân', 'Louza', 'Midfielder', '0', '2', '52', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('405', 'Kwadwo', 'Baah', 'Midfielder', '0', '2', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('467', 'Oghenekaro Peter', 'Etebo', 'Midfielder', '0', '2', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('495', 'Juraj', 'Kucka', 'Midfielder', '0', '2', '55', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('557', 'Ozan', 'Tufan', 'Midfielder', '0', '2', '50', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('669', 'Kamil', 'Conteh', 'Midfielder', '0', '2', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('679', 'Edo', 'Kayembe', 'Midfielder', '0', '2', '50', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('698', 'Samuel', 'Kalu', 'Midfielder', '0', '2', '50', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('406', 'Mark', 'Noble', 'Midfielder', '0', '1', '44', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('412', 'Andriy', 'Yarmolenko', 'Midfielder', '0', '1', '51', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('416', 'Manuel', 'Lanzini', 'Midfielder', '0', '1', '58', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('419', 'Saïd', 'Benrahma', 'Midfielder', '0', '1', '59', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('420', 'Jarrod', 'Bowen', 'Midfielder', '0', '1', '69', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('421', 'Declan', 'Rice', 'Midfielder', '0', '1', '51', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('422', 'Tomas', 'Soucek', 'Midfielder', '0', '1', '57', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('423', 'Pablo', 'Fornals', 'Midfielder', '0', '1', '60', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('522', 'Conor', 'Coventry', 'Midfielder', '0', '1', '45', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('582', 'Nikola', 'Vlasic', 'Midfielder', '0', '1', '57', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('589', 'Alex', 'Kral', 'Midfielder', '0', '1', '44', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('634', 'Sonny', 'Perkins', 'Midfielder', '0', '1', '45', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('652', 'Armstrong', 'Oko-Flex', 'Midfielder', '0', '1', '44', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('426', 'João Filipe Iria', 'Santos Moutinho', 'Midfielder', '0', '0', '49', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('434', 'Leander', 'Dendoncker', 'Midfielder', '0', '0', '47', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('435', 'Adama', 'Traoré', 'Midfielder', '0', '0', '56', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('436', 'Rúben Diogo', 'da Silva Neves', 'Midfielder', '0', '0', '53', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('438', 'Daniel', 'Castelo Podence', 'Midfielder', '0', '0', '55', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('440', 'Morgan', 'Gibbs-White', 'Midfielder', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('441', 'Pedro', 'Lomba Neto', 'Midfielder', '0', '0', '64', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('442', 'Owen', 'Otasowie', 'Midfielder', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('461', 'Francisco', 'Machado Mota de Castro Trincão', 'Midfielder', '0', '0', '56', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('547', 'Luke', 'Cundle', 'Midfielder', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('548', 'Chem', 'Campbell', 'Midfielder', '0', '0', '44', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('661', 'Bruno André', 'Cavaco Jordão', 'Midfielder', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('687', 'Ryan', 'Giles', 'Midfielder', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('689', 'Francisco Jorge', 'Tomás Oliveira', 'Midfielder', '0', '0', '55', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('4', 'Pierre-Emerick', 'Aubameyang', 'Forward', '0', '4', '96', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('6', 'Alexandre', 'Lacazette', 'Forward', '0', '0', '84', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('20', 'Edward', 'Nketiah', 'Forward', '0', '0', '54', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('530', 'Folarin', 'Balogun', 'Forward', '0', '0', '47', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('694', 'Mika', 'Biereth', 'Forward', '0', '0', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('40', 'Ollie', 'Watkins', 'Forward', '0', '0', '77', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('47', 'Wesley', 'Moraes', 'Forward', '0', '0', '54', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('48', 'Mbwana Ally', 'Samatta', 'Forward', '0', '0', '55', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('49', 'Keinan', 'Davis', 'Forward', '0', '0', '45', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('337', 'Danny', 'Ings', 'Forward', '0', '0', '77', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('568', 'Cameron', 'Archer', 'Forward', '0', '0', '45', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('78', 'Ivan', 'Toney', 'Forward', '0', '12', '66', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('88', 'Marcus', 'Forss', 'Forward', '0', '4', '53', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('95', 'Halil', 'Dervişoğlu', 'Forward', '0', '4', '54', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('640', 'Nathan', 'Young-Coombes', 'Forward', '0', '0', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('63', 'Neal', 'Maupay', 'Forward', '0', '0', '65', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('72', 'Aaron', 'Connolly', 'Forward', '0', '0', '53', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('447', 'Danny', 'Welbeck', 'Forward', '0', '0', '59', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('500', 'Florin', 'Andone', 'Forward', '0', '0', '50', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('535', 'Andi', 'Zeqiri', 'Forward', '0', '0', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('595', 'Jürgen', 'Locadia', 'Forward', '0', '0', '44', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('655', 'project', 'Ferguson', 'Forward', '0', '0', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('104', 'Jay', 'Rodriguez', 'Forward', '0', '0', '52', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('105', 'Ashley', 'Barnes', 'Forward', '0', '0', '52', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('111', 'Matej', 'Vydra', 'Forward', '0', '0', '52', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('533', 'Lewis', 'Richardson', 'Forward', '0', '0', '44', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('700', 'Wout', 'Weghorst', 'Forward', '0', '0', '65', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('120', 'Olivier', 'Giroud', 'Forward', '0', '1', '65', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('126', 'Michy', 'Batshuayi', 'Forward', '0', '0', '55', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('134', 'Timo', 'Werner', 'Forward', '0', '8', '86', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('136', 'Tammy', 'Abraham', 'Forward', '0', '0', '65', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('529', 'Romelu', 'Lukaku', 'Forward', '0', '5', '115', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('149', 'Christian', 'Benteke', 'Forward', '0', '0', '61', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('153', 'Jordan', 'Ayew', 'Forward', '0', '0', '58', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('159', 'Jean-Philippe', 'Mateta', 'Forward', '0', '0', '52', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('542', 'Robert', 'Street', 'Forward', '0', '0', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('586', 'Odsonne', 'Edouard', 'Forward', '0', '0', '65', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('177', 'Dominic', 'Calvert-Lewin', 'Forward', '0', '0', '79', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('180', 'Richarlison', 'de Andrade', 'Forward', '0', '0', '74', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('545', 'Nathan', 'Broadhead', 'Forward', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('564', 'Moise', 'Kean', 'Forward', '0', '0', '60', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('591', 'Salomón', 'Rondón', 'Forward', '0', '0', '60', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('602', 'Ellis', 'Simms', 'Forward', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('607', 'Lewis', 'Dobbin', 'Forward', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('622', 'Cenk', 'Tosun', 'Forward', '0', '0', '50', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('205', 'Jamie', 'Vardy', 'Forward', '0', '0', '103', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('213', 'Kelechi', 'Iheanacho', 'Forward', '0', '0', '69', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('455', 'Patson', 'Daka', 'Forward', '0', '0', '72', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('187', 'Rodrigo', 'Moreno', 'Forward', '0', '0', '62', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('189', 'Patrick', 'Bamford', 'Forward', '0', '0', '77', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('550', 'Sam', 'Greenwood', 'Forward', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('577', 'Joe', 'Gelhardt', 'Forward', '0', '0', '46', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('228', 'Roberto', 'Firmino', 'Forward', '0', '0', '87', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('235', 'Divock', 'Origi', 'Forward', '0', '0', '48', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('263', 'Gabriel Fernando', 'de Jesus', 'Forward', '0', '0', '85', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('663', 'Kayky da Silva', 'Chagas', 'Forward', '0', '0', '50', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('269', 'Edinson', 'Cavani', 'Forward', '0', '0', '84', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('278', 'Anthony', 'Martial', 'Forward', '0', '0', '76', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('579', 'Cristiano Ronaldo', 'dos Santos Aveiro', 'Forward', '0', '0', '125', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('109', 'Chris', 'Wood', 'Forward', '0', '0', '67', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('296', 'Callum', 'Wilson', 'Forward', '0', '0', '72', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('300', 'Dwight', 'Gayle', 'Forward', '0', '0', '52', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('307', 'Allan', 'Saint-Maximin', 'Forward', '0', '0', '67', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('310', 'Joelinton Cássio', 'Apolinário de Lira', 'Forward', '0', '0', '58', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('315', 'Teemu', 'Pukki', 'Forward', '0', '0', '58', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('322', 'Jordan', 'Hugill', 'Forward', '0', '0', '54', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('329', 'Adam', 'Idah', 'Forward', '0', '0', '49', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('516', 'Joshua', 'Sargent', 'Forward', '0', '0', '54', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('649', 'Thomas', 'Dickson-Peters', 'Forward', '0', '0', '45', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('344', 'Daniel', 'N''Lundulu', 'Forward', '0', '0', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('345', 'Che', 'Adams', 'Forward', '0', '0', '68', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('348', 'Michael', 'Obafemi', 'Forward', '0', '0', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('518', 'Armando', 'Broja', 'Forward', '0', '0', '52', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('519', 'Shane', 'Long', 'Forward', '0', '0', '54', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('525', 'Adam', 'Armstrong', 'Forward', '0', '0', '57', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('357', 'Harry', 'Kane', 'Forward', '0', '0', '123', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('520', 'Dane', 'Scarlett', 'Forward', '0', '0', '45', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('380', 'Troy', 'Deeney', 'Forward', '0', '0', '54', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('383', 'Andre', 'Gray', 'Forward', '0', '0', '54', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('388', 'Stipe', 'Perica', 'Forward', '0', '0', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('393', 'Isaac', 'Success Ajayi', 'Forward', '0', '0', '50', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('395', 'Ashley', 'Fletcher', 'Forward', '0', '0', '48', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('404', 'João Pedro', 'Junqueira de Jesus', 'Forward', '0', '0', '54', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('450', 'Emmanuel', 'Dennis', 'Forward', '0', '0', '62', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('468', 'Joshua', 'King', 'Forward', '0', '0', '59', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('469', 'Adedapo', 'Awokoya-Mebude', 'Forward', '0', '0', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('472', 'Juan Camilo', 'Hernández Suárez', 'Forward', '0', '0', '50', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('413', 'Michail', 'Antonio', 'Forward', '0', '0', '79', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('430', 'Raúl', 'Jiménez', 'Forward', '0', '0', '74', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('445', 'Fabio', 'Silva', 'Forward', '0', '8', '56', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('523', 'Patrick', 'Cutrone', 'Forward', '0', '0', '50', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('583', 'Hee-Chan', 'Hwang', 'Forward', '0', '0', '54', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('5', 'Cédric', 'Soares', 'Defender', '0', '-1', '42', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('8', 'Pablo', 'Marí', 'Defender', '0', '-1', '42', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('9', 'Héctor', 'Bellerín', 'Defender', '0', '-1', '48', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('11', 'Sead', 'Kolasinac', 'Defender', '0', '-1', '42', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('14', 'Rob', 'Holding', 'Defender', '0', '-1', '41', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('16', 'Kieran', 'Tierney', 'Defender', '0', '-1', '51', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('23', 'Gabriel', 'Magalhães', 'Defender', '0', '-1', '53', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('24', 'Konstantinos', 'Mavropanos', 'Defender', '0', '-1', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('27', 'William', 'Saliba', 'Defender', '0', '-1', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('67', 'Ben', 'White', 'Defender', '0', '-1', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('466', 'Nuno', 'Varela Tavares', 'Defender', '0', '-1', '43', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('590', 'Takehiro', 'Tomiyasu', 'Defender', '0', '-1', '47', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('695', 'Ryan', 'Alebiosu', 'Defender', '0', '-1', '40', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('10', 'Calum', 'Chambers', 'Defender', '0', '8', '42', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('31', 'Björn', 'Engels', 'Defender', '0', '8', '45', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('36', 'Kortney', 'Hause', 'Defender', '0', '8', '44', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('38', 'Tyrone', 'Mings', 'Defender', '0', '8', '50', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('44', 'Matthew', 'Cash', 'Defender', '0', '8', '51', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('45', 'Ezri', 'Konsa Ngoyo', 'Defender', '0', '14', '49', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('46', 'Frédéric', 'Guilbert', 'Defender', '0', '8', '45', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('52', 'Ashley', 'Young', 'Defender', '0', '8', '47', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('168', 'Lucas', 'Digne', 'Defender', '0', '8', '51', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('610', 'Lamare', 'Bogarde', 'Defender', '0', '8', '40', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('670', 'Josh', 'Feeney', 'Defender', '0', '8', '40', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('684', 'Kaine', 'Hayden', 'Defender', '0', '8', '40', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('76', 'Pontus', 'Jansson', 'Defender', '0', '-1', '46', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('83', 'Rico', 'Henry', 'Defender', '0', '-1', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('87', 'Charlie', 'Goode', 'Defender', '0', '-1', '39', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('89', 'Mads', 'Roerslev Rasmussen', 'Defender', '0', '-1', '43', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('90', 'Mads', 'Bech Sørensen', 'Defender', '0', '-1', '43', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('91', 'Ethan', 'Pinnock', 'Defender', '0', '-1', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('483', 'Kristoffer', 'Ajer', 'Defender', '0', '-1', '44', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('498', 'Dominic', 'Thompson', 'Defender', '0', '-1', '44', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('569', 'Finley', 'Stevens', 'Defender', '0', '-1', '39', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('594', 'Mathias', 'Jorgensen', 'Defender', '0', '-1', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('56', 'Shane', 'Duffy', 'Defender', '0', '-1', '41', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('59', 'Lewis', 'Dunk', 'Defender', '0', '-1', '48', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('61', 'Adam', 'Webster', 'Defender', '0', '-1', '44', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('62', 'Joël', 'Veltman', 'Defender', '0', '-1', '42', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('68', 'Bernardo', 'Fernandes Da Silva Junior', 'Defender', '0', '-1', '40', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('71', 'Tariq', 'Lamptey', 'Defender', '0', '-1', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('536', 'Michal', 'Karbownik', 'Defender', '0', '-1', '40', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('560', 'Haydon', 'Roberts', 'Defender', '0', '-1', '40', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('584', 'Marc', 'Cucurella', 'Defender', '0', '-1', '51', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('653', 'Ed', 'Turns', 'Defender', '0', '-1', '40', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('98', 'James', 'Tarkowski', 'Defender', '0', '-1', '49', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('99', 'Phil', 'Bardsley', 'Defender', '0', '-1', '39', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('100', 'Erik', 'Pieters', 'Defender', '0', '-1', '42', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('103', 'Kevin', 'Long', 'Defender', '0', '-1', '40', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('106', 'Ben', 'Mee', 'Defender', '0', '-1', '48', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('110', 'Matthew', 'Lowton', 'Defender', '0', '-1', '44', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('113', 'Charlie', 'Taylor', 'Defender', '0', '-1', '44', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('451', 'Nathan', 'Collins', 'Defender', '0', '-1', '43', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('534', 'Bobby', 'Thomas', 'Defender', '0', '-1', '39', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('565', 'Owen', 'Dodgson', 'Defender', '0', '-1', '39', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('585', 'Connor', 'Roberts', 'Defender', '0', '-1', '45', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('119', 'César', 'Azpilicueta', 'Defender', '0', '0', '56', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('121', 'Thiago', 'Emiliano da Silva', 'Defender', '0', '0', '56', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('122', 'Marcos', 'Alonso', 'Defender', '0', '0', '57', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('127', 'Antonio', 'Rüdiger', 'Defender', '0', '0', '62', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('133', 'Andreas', 'Christensen', 'Defender', '0', '0', '46', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('135', 'Benjamin', 'Chilwell', 'Defender', '0', '0', '56', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('139', 'Ethan', 'Ampadu', 'Defender', '0', '0', '45', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('142', 'Reece', 'James', 'Defender', '0', '0', '62', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('501', 'Malang', 'Sarr', 'Defender', '0', '0', '49', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('527', 'Trevoh', 'Chalobah', 'Defender', '0', '0', '47', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('539', 'Emerson', 'Palmieri dos Santos', 'Defender', '0', '0', '45', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('690', 'Robert Kenedy', 'Nunes do Nascimento', 'Defender', '0', '0', '45', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('147', 'James', 'Tomkins', 'Defender', '0', '-1', '43', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('150', 'Cheikhou', 'Kouyaté', 'Defender', '0', '-1', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('151', 'Martin', 'Kelly', 'Defender', '0', '-1', '39', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('158', 'Jarosław', 'Jach', 'Defender', '0', '-1', '43', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('161', 'Nathan', 'Ferguson', 'Defender', '0', '-1', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('162', 'Tyrick', 'Mitchell', 'Defender', '0', '-1', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('474', 'Joel', 'Ward', 'Defender', '0', '-1', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('477', 'Marc', 'Guéhi', 'Defender', '0', '-1', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('488', 'Joachim', 'Andersen', 'Defender', '0', '-1', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('493', 'Nathaniel', 'Clyne', 'Defender', '0', '-1', '43', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('540', 'Reece', 'Hannam', 'Defender', '0', '-1', '39', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('165', 'Seamus', 'Coleman', 'Defender', '0', '0', '49', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('169', 'Michael', 'Keane', 'Defender', '0', '0', '49', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('175', 'Yerry', 'Mina', 'Defender', '0', '0', '49', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('178', 'Mason', 'Holgate', 'Defender', '0', '0', '42', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('179', 'Ben', 'Godfrey', 'Defender', '0', '0', '48', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('502', 'Jonjoe', 'Kenny', 'Defender', '0', '12', '44', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('544', 'Jarrad', 'Branthwaite', 'Defender', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('570', 'Niels', 'Nkounkou', 'Defender', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('623', 'Reece', 'Welch', 'Defender', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('674', 'Nathan', 'Patterson', 'Defender', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('675', 'Vitalii', 'Mykolenko', 'Defender', '0', '0', '50', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('201', 'Jonny', 'projects', 'Defender', '0', '-2', '54', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('207', 'Ricardo Domingos', 'Barbosa Pereira', 'Defender', '0', '-2', '52', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('208', 'Daniel', 'Amartey', 'Defender', '0', '-2', '38', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('209', 'Timothy', 'Castagne', 'Defender', '0', '-2', '53', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('217', 'Çaglar', 'Söyüncü', 'Defender', '0', '-2', '49', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('218', 'James', 'Justin', 'Defender', '0', '-2', '49', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('219', 'Luke', 'Thomas', 'Defender', '0', '4', '43', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('220', 'Wesley', 'Fofana', 'Defender', '0', '-2', '43', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('340', 'Jannik', 'Vestergaard', 'Defender', '0', '-2', '47', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('473', 'Ryan', 'Bertrand', 'Defender', '0', '-2', '46', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('639', 'Vontae', 'Daley-Campbell', 'Defender', '0', '-2', '40', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('645', 'Ben', 'Nelson', 'Defender', '0', '-2', '40', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('184', 'Liam', 'Cooper', 'Defender', '0', '-1', '44', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('185', 'Luke', 'Ayling', 'Defender', '0', '-1', '43', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('190', 'Diego', 'Llorente', 'Defender', '0', '-1', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('194', 'Robin', 'Koch', 'Defender', '0', '-1', '43', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('198', 'Pascal', 'Struijk', 'Defender', '0', '-1', '43', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('463', 'Héctor Junior', 'Firpo Adames', 'Defender', '0', '-1', '47', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('562', 'Cody', 'Drameh', 'Defender', '0', '-1', '39', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('563', 'Charlie', 'Cresswell', 'Defender', '0', '-1', '40', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('608', 'Leo Fuhr', 'Hjelde', 'Defender', '0', '-1', '40', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('657', 'Kris', 'Moore', 'Defender', '0', '-1', '40', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('224', 'Joel', 'Matip', 'Defender', '0', '0', '49', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('229', 'Virgil', 'van Dijk', 'Defender', '0', '6', '67', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('234', 'Andrew', 'Robertson', 'Defender', '0', '0', '71', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('237', 'Trent', 'Alexander-Arnold', 'Defender', '0', '0', '85', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('238', 'Joseph', 'Gomez', 'Defender', '0', '0', '47', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('241', 'Nathaniel', 'Phillips', 'Defender', '0', '0', '42', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('243', 'Ibrahima', 'Konaté', 'Defender', '0', '0', '51', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('245', 'Konstantinos', 'Tsimikas', 'Defender', '0', '0', '37', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('246', 'Neco', 'Williams', 'Defender', '0', '0', '38', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('247', 'Rhys', 'Williams', 'Defender', '0', '0', '44', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('248', 'Ben', 'Davies', 'Defender', '0', '0', '40', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('626', 'Conor', 'Bradley', 'Defender', '0', '0', '40', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('627', 'Owen', 'Beck', 'Defender', '0', '0', '40', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('660', 'Jarell', 'Quansah', 'Defender', '0', '0', '40', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('249', 'Kyle', 'Walker', 'Defender', '0', '0', '54', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('252', 'John', 'Stones', 'Defender', '0', '0', '52', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('253', 'Benjamin', 'Mendy', 'Defender', '0', '0', '52', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('256', 'João Pedro Cavaco', 'Cancelo', 'Defender', '0', '0', '71', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('258', 'Nathan', 'Aké', 'Defender', '0', '0', '47', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('259', 'Aymeric', 'Laporte', 'Defender', '0', '0', '57', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('262', 'Rúben Santos', 'Gato Alves Dias', 'Defender', '0', '0', '63', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('264', 'Oleksandr', 'Zinchenko', 'Defender', '0', '0', '53', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('603', 'Luke', 'Mbete', 'Defender', '0', '0', '39', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('604', 'Joshua', 'Wilson-Esbrand', 'Defender', '0', '0', '39', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('651', 'Conrad', 'Egan-Riley', 'Defender', '0', '0', '40', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('273', 'Harry', 'Maguire', 'Defender', '0', '4', '54', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('275', 'Luke', 'Shaw', 'Defender', '0', '16', '50', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('279', 'Alex Nicolao', 'Telles', 'Defender', '0', '4', '50', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('283', 'Axel', 'Tuanzebe', 'Defender', '0', '4', '44', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('284', 'Victor', 'Lindelöf', 'Defender', '0', '4', '48', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('286', 'Eric', 'Bailly', 'Defender', '0', '4', '49', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('288', 'Aaron', 'Wan-Bissaka', 'Defender', '0', '4', '51', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('510', 'José Diogo', 'Dalot Teixeira', 'Defender', '0', '4', '45', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('555', 'Raphaël', 'Varane', 'Defender', '0', '4', '55', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('632', 'Phil', 'Jones', 'Defender', '0', '4', '45', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('39', 'Matt', 'Targett', 'Defender', '0', '0', '47', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('58', 'Dan', 'Burn', 'Defender', '0', '0', '44', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('292', 'Matt', 'Ritchie', 'Defender', '0', '0', '49', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('293', 'Ciaran', 'Clark', 'Defender', '0', '0', '44', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('299', 'Jamaal', 'Lascelles', 'Defender', '0', '0', '44', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('301', 'Paul', 'Dummett', 'Defender', '0', '0', '45', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('302', 'Javier', 'Manquillo', 'Defender', '0', '0', '39', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('303', 'Emil', 'Krafth', 'Defender', '0', '0', '43', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('305', 'Fabian', 'Schär', 'Defender', '0', '0', '43', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('311', 'Jamal', 'Lewis', 'Defender', '0', '0', '42', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('465', 'Federico', 'Fernández', 'Defender', '0', '0', '43', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('678', 'Kieran', 'Trippier', 'Defender', '0', '0', '50', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('290', 'Brandon', 'Williams', 'Defender', '0', '0', '39', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('319', 'Grant', 'Hanley', 'Defender', '0', '0', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('321', 'Sam', 'Byram', 'Defender', '0', '0', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('324', 'Christoph', 'Zimmermann', 'Defender', '0', '0', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('326', 'Max', 'Aarons', 'Defender', '0', '0', '43', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('327', 'Jacob', 'Sørensen', 'Defender', '0', '0', '43', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('331', 'Andrew', 'Omobamidele', 'Defender', '0', '0', '39', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('456', 'Ben', 'Gibson', 'Defender', '0', '0', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('457', 'Dimitris', 'Giannoulis', 'Defender', '0', '0', '44', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('515', 'Bali', 'Mumba', 'Defender', '0', '0', '39', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('580', 'Ozan', 'Kabak', 'Defender', '0', '0', '43', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('643', 'Jonathan', 'Tomkinson', 'Defender', '0', '0', '40', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('338', 'Jack', 'Stephens', 'Defender', '0', '-1', '44', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('342', 'Kyle', 'Walker-Peters', 'Defender', '0', '-1', '48', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('343', 'Jan', 'Bednarek', 'Defender', '0', '-1', '44', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('351', 'Mohammed', 'Salisu', 'Defender', '0', '-1', '45', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('460', 'Romain', 'Perraud', 'Defender', '0', '-1', '48', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('491', 'Tino', 'Livramento', 'Defender', '0', '-1', '43', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('546', 'Yan', 'Valery', 'Defender', '0', '-1', '39', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('567', 'Lyanco projectgelista', 'Silveira Neves Vojnovic', 'Defender', '0', '-1', '44', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('665', 'Dynel', 'Simeu', 'Defender', '0', '-1', '40', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('667', 'Thierry', 'Small', 'Defender', '0', '-1', '40', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('355', 'Toby', 'Alderweireld', 'Defender', '0', '8', '50', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('358', 'Serge', 'Aurier', 'Defender', '0', '8', '49', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('360', 'Matt', 'Doherty', 'Defender', '0', '8', '47', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('361', 'Eric', 'Dier', 'Defender', '0', '8', '46', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('364', 'Ben', 'Davies', 'Defender', '0', '8', '45', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('367', 'Davinson', 'Sánchez', 'Defender', '0', '8', '46', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('368', 'Ryan', 'Sessegnon', 'Defender', '0', '8', '43', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('370', 'Sergio', 'Reguilón', 'Defender', '0', '8', '54', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('371', 'Japhet', 'Tanganga', 'Defender', '0', '8', '42', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('374', 'Joe', 'Rodon', 'Defender', '0', '8', '42', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('494', 'Cristian', 'Romero', 'Defender', '0', '8', '48', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('588', 'Emerson Aparecido', 'Leite de Souza Junior', 'Defender', '0', '8', '49', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('598', 'Tobi', 'Omole', 'Defender', '0', '8', '39', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('377', 'Danny', 'Rose', 'Defender', '0', '8', '42', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('379', 'Craig', 'Cathcart', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('382', 'Francisco', 'Femenía Far', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('384', 'Christian', 'Kabasele', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('387', 'William', 'Troost-Ekong', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('390', 'Adam', 'Masina', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('396', 'Francisco', 'Sierralta', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('398', 'Marc', 'Navarro', 'Defender', '0', '8', '40', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('400', 'Jeremy', 'Ngakia', 'Defender', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('401', 'Ben', 'Wilmot', 'Defender', '0', '8', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('454', 'Matthew', 'Pollock', 'Defender', '0', '8', '40', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('618', 'Nicolas', 'Nkoulou', 'Defender', '0', '14', '44', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('633', 'James', 'Morris', 'Defender', '0', '8', '40', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('676', 'Hassane', 'Kamara', 'Defender', '0', '8', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('677', 'Samir', 'Caetano de Souza Santos', 'Defender', '0', '8', '45', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('128', 'Kurt', 'Zouma', 'Defender', '0', '10', '54', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('409', 'Angelo', 'Ogbonna', 'Defender', '0', '4', '49', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('410', 'Winston', 'Reid', 'Defender', '0', '4', '39', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('411', 'Aaron', 'Cresswell', 'Defender', '0', '4', '53', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('414', 'Craig', 'Dawson', 'Defender', '0', '4', '49', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('415', 'Ryan', 'Fredericks', 'Defender', '0', '4', '44', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('417', 'Arthur', 'Masuaku', 'Defender', '0', '4', '44', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('418', 'Vladimir', 'Coufal', 'Defender', '0', '4', '47', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('424', 'Issa', 'Diop', 'Defender', '0', '4', '43', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('425', 'Ben', 'Johnson', 'Defender', '0', '4', '40', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('521', 'Frederik', 'Alves', 'Defender', '0', '4', '40', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('554', 'Jamal', 'Baptiste', 'Defender', '0', '4', '40', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('617', 'Harrison', 'Ashby', 'Defender', '0', '4', '40', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('644', 'Ajibola', 'Alese', 'Defender', '0', '4', '40', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('682', 'Pierre', 'Ekwah', 'Defender', '0', '4', '40', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('428', 'Willy', 'Boly', 'Defender', '0', '0', '49', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('429', 'Conor', 'Coady', 'Defender', '0', '0', '47', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('431', 'Romain', 'Saïss', 'Defender', '0', '12', '50', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('432', 'Fernando', 'Marçal', 'Defender', '0', '0', '42', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('433', 'Jonathan', 'Castro Otto', 'Defender', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('437', 'Nélson', 'Cabral Semedo', 'Defender', '0', '0', '48', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('439', 'Max', 'Kilman', 'Defender', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('443', 'Ki-Jana', 'Hoever', 'Defender', '0', '0', '39', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('446', 'Yerson', 'Mosquera Valdelamar', 'Defender', '0', '0', '44', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('470', 'Rayan', 'Ait Nouri', 'Defender', '0', '0', '43', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('549', 'Christian', 'Marques', 'Defender', '0', '0', '40', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('635', 'Hugo', 'Bueno', 'Defender', '0', '0', '40', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('685', 'Toti António', 'Gomes', 'Defender', '0', '0', '45', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('686', 'Dion', 'Sanderson', 'Defender', '0', '0', '40', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('2', 'Rúnar Alex', 'Rúnarsson', 'Goalkeeper', '0', '-1', '40', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('532', 'Karl', 'Hein', 'Goalkeeper', '0', '-1', '40', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('559', 'Aaron', 'Ramsdale', 'Goalkeeper', '0', '-1', '51', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('572', 'Arthur', 'Okonkwo', 'Goalkeeper', '0', '-1', '39', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('28', 'Jed', 'Steer', 'Goalkeeper', '0', '8', '39', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('30', 'Emiliano', 'Martínez', 'Goalkeeper', '0', '8', '55', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('596', 'Viljami', 'Sinisalo', 'Goalkeeper', '0', '8', '40', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('650', 'Filip', 'Marschall', 'Goalkeeper', '0', '8', '40', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('691', 'Robin', 'Olsen', 'Goalkeeper', '0', '8', '40', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('80', 'David', 'Raya Martin', 'Goalkeeper', '0', '-1', '43', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('92', 'Ellery', 'Balcombe', 'Goalkeeper', '0', '-1', '40', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('94', 'Patrik', 'Gunnarsson', 'Goalkeeper', '0', '-1', '39', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('556', 'Álvaro', 'Fernández', 'Goalkeeper', '0', '-1', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('619', 'Matthew', 'Cox', 'Goalkeeper', '0', '-1', '40', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('673', 'Jonas', 'Lössl', 'Goalkeeper', '0', '-1', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('54', 'Jason', 'Steele', 'Goalkeeper', '0', '-1', '40', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('65', 'Mathew', 'Ryan', 'Goalkeeper', '0', '-1', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('69', 'Robert', 'Sánchez', 'Goalkeeper', '0', '-1', '46', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('476', 'Kjell', 'Scherpen', 'Goalkeeper', '0', '-1', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('688', 'Thomas', 'McGill', 'Goalkeeper', '0', '-1', '40', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('112', 'Nick', 'Pope', 'Goalkeeper', '0', '-1', '54', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('114', 'Will', 'Norris', 'Goalkeeper', '0', '-1', '44', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('117', 'Bailey', 'Peacock-Farrell', 'Goalkeeper', '0', '-1', '45', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('480', 'Wayne', 'Hennessey', 'Goalkeeper', '0', '-1', '45', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('129', 'Kepa', 'Arrizabalaga', 'Goalkeeper', '0', '2', '47', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('143', 'Edouard', 'Mendy', 'Goalkeeper', '0', '540', '61', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('1', 'Bernd', 'Leno', 'Goalkeeper', '0', '-1', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('606', 'Marcus', 'Bettinelli', 'Goalkeeper', '0', '0', '40', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('146', 'Vicente', 'Guaita', 'Goalkeeper', '0', '-1', '46', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('156', 'Jack', 'Butland', 'Goalkeeper', '0', '-1', '44', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('561', 'Remi', 'Matthews', 'Goalkeeper', '0', '3', '39', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('170', 'Jordan', 'Pickford', 'Goalkeeper', '0', '0', '49', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('181', 'João', 'Virgínia', 'Goalkeeper', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('481', 'Asmir', 'Begović', 'Goalkeeper', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('571', 'Andy', 'Lonergan', 'Goalkeeper', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('616', 'Harry', 'Tyrer', 'Goalkeeper', '0', '0', '40', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('200', 'Kasper', 'Schmeichel', 'Goalkeeper', '0', '-2', '48', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('204', 'Danny', 'Ward', 'Goalkeeper', '0', '-2', '40', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('573', 'Eldin', 'Jakupovic', 'Goalkeeper', '0', '-2', '40', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('183', 'Francisco', 'Casilla Cortés', 'Goalkeeper', '0', '-1', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('199', 'Illan', 'Meslier', 'Goalkeeper', '0', '-1', '48', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('490', 'Kristoffer', 'Klaesson', 'Goalkeeper', '0', '-1', '43', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('223', 'Adrián', 'San Miguel del Castillo', 'Goalkeeper', '0', '0', '43', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('231', 'Alisson', 'Ramses Becker', 'Goalkeeper', '0', '0', '60', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('242', 'Caoimhin', 'Kelleher', 'Goalkeeper', '0', '0', '43', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('656', 'Marcelo', 'de Araújo Pitaluga Filho', 'Goalkeeper', '0', '0', '40', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('257', 'Ederson', 'Santana de Moraes', 'Goalkeeper', '0', '0', '61', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('260', 'Zack', 'Steffen', 'Goalkeeper', '0', '0', '44', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('593', 'Scott', 'Carson', 'Goalkeeper', '0', '0', '39', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('615', 'Cieran', 'Slicker', 'Goalkeeper', '0', '0', '40', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('270', 'David', 'de Gea', 'Goalkeeper', '0', '4', '52', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('280', 'Dean', 'Henderson', 'Goalkeeper', '0', '4', '47', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('509', 'Tom', 'Heaton', 'Goalkeeper', '0', '4', '39', '13');
INSERT INTO "PROJECT"."PLAYER" VALUES ('294', 'Karl', 'Darlow', 'Goalkeeper', '0', '0', '45', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('295', 'Martin', 'Dubravka', 'Goalkeeper', '0', '0', '44', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('513', 'Freddie', 'Woodman', 'Goalkeeper', '0', '0', '43', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('514', 'Mark', 'Gillespie', 'Goalkeeper', '0', '0', '40', '14');
INSERT INTO "PROJECT"."PLAYER" VALUES ('313', 'Michael', 'McGovern', 'Goalkeeper', '0', '0', '39', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('314', 'Tim', 'Krul', 'Goalkeeper', '0', '0', '45', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('448', 'Angus', 'Gunn', 'Goalkeeper', '0', '0', '40', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('666', 'Jon', 'McCracken', 'Goalkeeper', '0', '0', '40', '15');
INSERT INTO "PROJECT"."PLAYER" VALUES ('333', 'Fraser', 'Forster', 'Goalkeeper', '0', '5', '44', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('334', 'Alex', 'McCarthy', 'Goalkeeper', '0', '-1', '44', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('637', 'Harry', 'Lewis', 'Goalkeeper', '0', '-1', '39', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('641', 'Willy', 'Caballero', 'Goalkeeper', '0', '-1', '43', '16');
INSERT INTO "PROJECT"."PLAYER" VALUES ('352', 'Joe', 'Hart', 'Goalkeeper', '0', '8', '45', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('353', 'Hugo', 'Lloris', 'Goalkeeper', '0', '11', '54', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('486', 'Pierluigi', 'Gollini', 'Goalkeeper', '0', '8', '43', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('659', 'Brandon', 'Austin', 'Goalkeeper', '0', '8', '40', '17');
INSERT INTO "PROJECT"."PLAYER" VALUES ('376', 'Ben', 'Foster', 'Goalkeeper', '0', '8', '41', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('389', 'Daniel', 'Bachmann', 'Goalkeeper', '0', '8', '43', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('574', 'Robert', 'Elliot', 'Goalkeeper', '0', '8', '40', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('642', 'Vincent', 'Angelini', 'Goalkeeper', '0', '8', '40', '18');
INSERT INTO "PROJECT"."PLAYER" VALUES ('407', 'Darren', 'Randolph', 'Goalkeeper', '0', '4', '43', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('408', 'Lukasz', 'Fabianski', 'Goalkeeper', '0', '4', '50', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('489', 'Alphonse', 'Areola', 'Goalkeeper', '0', '4', '47', '19');
INSERT INTO "PROJECT"."PLAYER" VALUES ('427', 'Rui Pedro', 'dos Santos Patrício', 'Goalkeeper', '0', '0', '50', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('444', 'Andreas', 'Söndergaard', 'Goalkeeper', '0', '0', '39', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('452', 'John', 'Ruddy', 'Goalkeeper', '0', '0', '43', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('475', 'José', 'Malheiro de Sá', 'Goalkeeper', '0', '0', '52', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('611', 'Louie', 'Moulden', 'Goalkeeper', '0', '0', '40', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('621', 'James', 'Storer', 'Goalkeeper', '0', '0', '40', '20');
INSERT INTO "PROJECT"."PLAYER" VALUES ('3', 'Willian', 'Borges Da Silva', 'Midfielder', '0', '0', '63', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('7', 'Granit', 'Xhaka', 'Midfielder', '0', '0', '48', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('12', 'Mohamed Naser', 'El Sayed Elneny', 'Midfielder', '0', '0', '44', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('13', 'Ainsley', 'Maitland-Niles', 'Midfielder', '0', '0', '52', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('15', 'Thomas', 'Partey', 'Midfielder', '0', '0', '50', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('17', 'Nicolas', 'Pépé', 'Midfielder', '0', '0', '69', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('18', 'Lucas', 'Torreira', 'Midfielder', '0', '0', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('21', 'Emile', 'Smith Rowe', 'Midfielder', '0', '0', '59', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('22', 'Bukayo', 'Saka', 'Midfielder', '0', '5', '64', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('25', 'Mattéo', 'Guendouzi', 'Midfielder', '0', '0', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('26', 'Gabriel Teodoro', 'Martinelli Silva', 'Midfielder', '0', '0', '54', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('478', 'Albert', 'Sambi Lokonga', 'Midfielder', '0', '0', '48', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('531', 'Reiss', 'Nelson', 'Midfielder', '0', '0', '50', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('558', 'Martin', 'Ødegaard', 'Midfielder', '0', '0', '56', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('664', 'Charlie', 'Patino', 'Midfielder', '0', '0', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('692', 'Omari', 'Hutchinson', 'Midfielder', '0', '0', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('693', 'Salah-Eddine', 'Oulad M''hand', 'Midfielder', '0', '0', '45', '1');
INSERT INTO "PROJECT"."PLAYER" VALUES ('29', 'Conor', 'Hourihane', 'Midfielder', '0', '2', '49', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('32', 'Bertrand', 'Traoré', 'Midfielder', '0', '2', '57', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('34', 'Morgan', 'Sanson', 'Midfielder', '0', '2', '50', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('35', 'John', 'McGinn', 'Midfielder', '0', '2', '58', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('37', 'Mahmoud Ahmed', 'Ibrahim Hassan', 'Midfielder', '0', '2', '54', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('41', 'Marvelous', 'Nakamba', 'Midfielder', '0', '2', '44', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('43', 'Emiliano', 'Buendía Stati', 'Midfielder', '0', '2', '62', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('50', 'Douglas Luiz', 'Soares de Paulo', 'Midfielder', '0', '2', '44', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('51', 'Jacob', 'Ramsey', 'Midfielder', '0', '2', '46', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('492', 'Leon', 'Bailey', 'Midfielder', '0', '2', '63', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('496', 'Aaron', 'Ramsey', 'Midfielder', '0', '2', '44', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('497', 'Jaden', 'Philogene-Bidace', 'Midfielder', '0', '2', '50', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('526', 'Carney', 'Chukwuemeka', 'Midfielder', '0', '2', '45', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('638', 'Tim', 'Iroegbunam', 'Midfielder', '0', '2', '45', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('681', 'Philippe', 'Coutinho Correia', 'Midfielder', '0', '2', '70', '2');
INSERT INTO "PROJECT"."PLAYER" VALUES ('77', 'Christian', 'Nørgaard', 'Midfielder', '0', '0', '50', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('79', 'Tariqe', 'Fosu-Henry', 'Midfielder', '0', '0', '51', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('81', 'Sergi', 'Canós', 'Midfielder', '0', '0', '55', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('82', 'Pelenda Joshua', 'Dasilva', 'Midfielder', '0', '0', '53', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('84', 'Vitaly', 'Janelt', 'Midfielder', '0', '0', '50', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('85', 'Saman', 'Ghoddos', 'Midfielder', '0', '10', '53', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('86', 'Mathias', 'Jensen', 'Midfielder', '0', '0', '49', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('93', 'Jan', 'Zamburek', 'Midfielder', '0', '0', '44', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('96', 'Bryan', 'Mbeumo', 'Midfielder', '0', '0', '53', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('97', 'Mads', 'Bidstrup', 'Midfielder', '0', '0', '44', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('479', 'Frank', 'Onyeka', 'Midfielder', '0', '0', '49', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('499', 'Shandon', 'Baptiste', 'Midfielder', '0', '0', '49', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('524', 'Yoane', 'Wissa', 'Midfielder', '0', '0', '59', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('614', 'Paris', 'Maghoma', 'Midfielder', '0', '0', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('628', 'Maxwell', 'Haygarth', 'Midfielder', '0', '0', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('662', 'Myles', 'Peart-Harris', 'Midfielder', '0', '0', '45', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('699', 'Christian', 'Eriksen', 'Midfielder', '0', '0', '55', '3');
INSERT INTO "PROJECT"."PLAYER" VALUES ('53', 'Adam', 'Lallana', 'Midfielder', '0', '0', '53', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('55', 'Pascal', 'Groß', 'Midfielder', '0', '0', '57', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('57', 'Davy', 'Pröpper', 'Midfielder', '0', '5', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('60', 'Solomon', 'March', 'Midfielder', '0', '0', '53', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('64', 'Leandro', 'Trossard', 'Midfielder', '0', '0', '61', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('66', 'Alireza', 'Jahanbakhsh', 'Midfielder', '0', '0', '55', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('70', 'Yves', 'Bissouma', 'Midfielder', '0', '0', '44', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('73', 'Steven', 'Alzate', 'Midfielder', '0', '0', '48', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('74', 'Alexis', 'Mac Allister', 'Midfielder', '0', '0', '53', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('75', 'Jakub', 'Moder', 'Midfielder', '0', '0', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('462', 'Enock', 'Mwepu', 'Midfielder', '0', '0', '59', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('537', 'Taylor', 'Richards', 'Midfielder', '0', '5', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('538', 'Moisés', 'Caicedo', 'Midfielder', '0', '0', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('612', 'Jeremy', 'Sarmiento', 'Midfielder', '0', '0', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('654', 'Marc', 'Leonard', 'Midfielder', '0', '0', '45', '4');
INSERT INTO "PROJECT"."PLAYER" VALUES ('101', 'Jack', 'Cork', 'Midfielder', '0', '0', '44', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('102', 'Dale', 'Stephens', 'Midfielder', '0', '0', '44', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('107', 'Ashley', 'Westwood', 'Midfielder', '0', '5', '53', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('108', 'Johann Berg', 'Gudmundsson', 'Midfielder', '0', '5', '54', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('115', 'Josh', 'Brownhill', 'Midfielder', '0', '0', '43', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('116', 'Josh', 'Benson', 'Midfielder', '0', '0', '45', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('118', 'Dwight', 'McNeil', 'Midfielder', '0', '0', '57', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('575', 'Aaron', 'Lennon', 'Midfielder', '0', '0', '49', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('578', 'Maxwel', 'Cornet', 'Midfielder', '0', '0', '59', '5');
INSERT INTO "PROJECT"."PLAYER" VALUES ('123', 'Jorge Luiz', 'Frello Filho', 'Midfielder', '0', '0', '59', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('124', 'Ross', 'Barkley', 'Midfielder', '0', '0', '52', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('125', 'Mateo', 'Kovacic', 'Midfielder', '0', '0', '50', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('130', 'N''Golo', 'Kanté', 'Midfielder', '0', '0', '49', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('131', 'Hakim', 'Ziyech', 'Midfielder', '0', '0', '73', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('132', 'Ruben', 'Loftus-Cheek', 'Midfielder', '0', '0', '54', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('137', 'Christian', 'Pulisic', 'Midfielder', '0', '0', '79', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('138', 'Mason', 'Mount', 'Midfielder', '0', '0', '76', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('140', 'Callum', 'Hudson-Odoi', 'Midfielder', '0', '0', '53', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('141', 'Kai', 'Havertz', 'Midfielder', '0', '0', '78', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('592', 'Saúl', 'Ñíguez', 'Midfielder', '0', '0', '49', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('671', 'Lewis', 'Hall', 'Midfielder', '0', '0', '45', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('672', 'Harvey', 'Vale', 'Midfielder', '0', '0', '45', '6');
INSERT INTO "PROJECT"."PLAYER" VALUES ('144', 'Conor', 'Gallagher', 'Midfielder', '0', '0', '61', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('148', 'James', 'McArthur', 'Midfielder', '0', '0', '43', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('152', 'Luka', 'Milivojevic', 'Midfielder', '0', '0', '53', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('154', 'Wilfried', 'Zaha', 'Midfielder', '0', '0', '68', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('155', 'Jeffrey', 'Schlupp', 'Midfielder', '0', '0', '54', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('157', 'Jairo', 'Riedewald', 'Midfielder', '0', '0', '47', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('160', 'Eberechi', 'Eze', 'Midfielder', '0', '0', '59', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('386', 'Will', 'Hughes', 'Midfielder', '0', '0', '47', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('464', 'Michael', 'Olise', 'Midfielder', '0', '0', '54', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('541', 'Jesurun', 'Rak-Sakyi', 'Midfielder', '0', '0', '44', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('543', 'Scott', 'Banks', 'Midfielder', '0', '0', '45', '7');
INSERT INTO "PROJECT"."PLAYER" VALUES ('42', 'Anwar', 'El Ghazi', 'Midfielder', '0', '0', '56', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('163', 'Fabian', 'Delph', 'Midfielder', '0', '0', '43', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('164', 'Gylfi', 'Sigurdsson', 'Midfielder', '0', '0', '67', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('166', 'James', 'Rodríguez', 'Midfielder', '0', '0', '69', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('167', 'Bernard', 'Anício Caldeira Duarte', 'Midfielder', '0', '0', '55', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('171', 'Allan', 'Marques Loureiro', 'Midfielder', '0', '0', '43', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('172', 'André Filipe', 'Tavares Gomes', 'Midfielder', '0', '0', '49', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('173', 'Abdoulaye', 'Doucouré', 'Midfielder', '0', '0', '54', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('174', 'Alex', 'Iwobi', 'Midfielder', '0', '0', '58', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('176', 'Tom', 'Davies', 'Midfielder', '0', '0', '48', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('282', 'Donny', 'van de Beek', 'Midfielder', '0', '10', '57', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('363', 'Bamidele', 'Alli', 'Midfielder', '0', '0', '62', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('482', 'Andros', 'Townsend', 'Midfielder', '0', '0', '52', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('484', 'Demarai', 'Gray', 'Midfielder', '0', '0', '55', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('503', 'Anthony', 'Gordon', 'Midfielder', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('504', 'Jean-Philippe', 'Gbamin', 'Midfielder', '0', '0', '44', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('613', 'Charlie', 'Whitaker', 'Midfielder', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('630', 'Tyler', 'Onyango', 'Midfielder', '0', '0', '45', '8');
INSERT INTO "PROJECT"."PLAYER" VALUES ('202', 'Marc', 'Albrighton', 'Midfielder', '0', '0', '52', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('203', 'Nampalys', 'Mendy', 'Midfielder', '0', '0', '43', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('206', 'Dennis', 'Praet', 'Midfielder', '0', '0', '49', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('210', 'Youri', 'Tielemans', 'Midfielder', '0', '0', '64', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('211', 'Ayoze', 'Pérez', 'Midfielder', '0', '0', '57', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('212', 'James', 'Maddison', 'Midfielder', '0', '5', '70', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('214', 'Hamza', 'Choudhury', 'Midfielder', '0', '0', '44', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('215', 'Harvey', 'Barnes', 'Midfielder', '0', '0', '65', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('216', 'Wilfred', 'Ndidi', 'Midfielder', '0', '0', '48', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('458', 'Boubakary', 'Soumaré', 'Midfielder', '0', '0', '48', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('505', 'Kiernan', 'Dewsbury-Hall', 'Midfielder', '0', '0', '44', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('587', 'Ademola', 'Lookman', 'Midfielder', '0', '0', '60', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('646', 'Lewis', 'Brunt', 'Midfielder', '0', '0', '45', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('647', 'Kasey', 'McAteer', 'Midfielder', '0', '0', '45', '9');
INSERT INTO "PROJECT"."PLAYER" VALUES ('182', 'Pablo', 'Hernández Domínguez', 'Midfielder', '0', '0', '55', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('186', 'Mateusz', 'Klich', 'Midfielder', '0', '0', '52', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('188', 'Stuart', 'Dallas', 'Midfielder', '0', '0', '49', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('191', 'Kalvin', 'Phillips', 'Midfielder', '0', '0', '47', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('192', 'Hélder Wander', 'Sousa de Azevedo e Costa', 'Midfielder', '0', '0', '54', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('193', 'Tyler', 'Roberts', 'Midfielder', '0', '0', '48', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('195', 'Ian Carlo', 'Poveda-Ocampo', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('196', 'Raphael', 'Dias Belloli', 'Midfielder', '0', '0', '66', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('197', 'Jamie', 'Shackleton', 'Midfielder', '0', '0', '44', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('267', 'Jack', 'Harrison', 'Midfielder', '0', '0', '55', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('287', 'Daniel', 'James', 'Midfielder', '0', '0', '60', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('551', 'Crysencio', 'Summerville', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('552', 'Adam', 'Forshaw', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('576', 'Liam', 'McCarron', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('600', 'Nohan', 'Kenneh', 'Midfielder', '0', '0', '44', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('601', 'Stuart', 'McKinstry', 'Midfielder', '0', '0', '43', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('624', 'Lewis', 'Bate', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('631', 'Jack', 'Jenkins', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('658', 'Archie', 'Gray', 'Midfielder', '0', '0', '45', '10');
INSERT INTO "PROJECT"."PLAYER" VALUES ('221', 'James', 'Milner', 'Midfielder', '0', '0', '49', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('222', 'Jordan', 'Henderson', 'Midfielder', '0', '0', '50', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('225', 'Thiago', 'Alcántara do Nascimento', 'Midfielder', '0', '0', '53', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('226', 'Xherdan', 'Shaqiri', 'Midfielder', '0', '0', '59', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('227', 'Alex', 'Oxlade-Chamberlain', 'Midfielder', '0', '0', '58', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('230', 'Sadio', 'Mané', 'Midfielder', '0', '0', '117', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('232', 'Fabio Henrique', 'Tavares', 'Midfielder', '0', '0', '54', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('233', 'Mohamed', 'Salah', 'Midfielder', '0', '0', '127', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('236', 'Takumi', 'Minamino', 'Midfielder', '0', '0', '51', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('239', 'Naby', 'Keita', 'Midfielder', '0', '0', '50', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('240', 'Diogo', 'Jota', 'Midfielder', '0', '0', '84', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('244', 'Curtis', 'Jones', 'Midfielder', '0', '0', '50', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('506', 'Harvey', 'Elliott', 'Midfielder', '0', '0', '53', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('553', 'Ben', 'Woodburn', 'Midfielder', '0', '0', '45', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('620', 'Tyler', 'Morton', 'Midfielder', '0', '0', '45', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('625', 'Kaide', 'Gordon', 'Midfielder', '0', '0', '45', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('696', 'Luis', 'Díaz', 'Midfielder', '0', '0', '80', '11');
INSERT INTO "PROJECT"."PLAYER" VALUES ('33', 'Jack', 'Grealish', 'Midfielder', '0', '0', '76', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('250', 'Ilkay', 'Gündogan', 'Midfielder', '0', '0', '72', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('251', 'Kevin', 'De Bruyne', 'Midfielder', '0', '0', '122', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('254', 'Riyad', 'Mahrez', 'Midfielder', '0', '0', '86', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('255', 'Raheem', 'Sterling', 'Midfielder', '0', '0', '108', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('261', 'Bernardo Mota', 'Veiga de Carvalho e Silva', 'Midfielder', '0', '0', '75', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('265', 'Phil', 'Foden', 'Midfielder', '0', '0', '80', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('266', 'Rodrigo', 'Hernandez', 'Midfielder', '0', '0', '55', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('268', 'Ferran', 'Torres', 'Midfielder', '0', '0', '67', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('453', 'Fernando', 'Luiz Rosa', 'Midfielder', '0', '0', '48', '12');
INSERT INTO "PROJECT"."PLAYER" VALUES ('507', 'Cole', 'Palmer', 'Midfielder', '0', '0', '45', '12');

-- ----------------------------
-- Table structure for PLAYER_STAT
-- ----------------------------
DROP TABLE "PROJECT"."PLAYER_STAT";
CREATE TABLE "PROJECT"."PLAYER_STAT" (
  "MATCH_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "GAMEWEEK" NUMBER(5,0) VISIBLE NOT NULL,
  "MIN_PLAYED" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "GOALS_SCORED" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "ASSIST" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "GOALS_CONCEDED" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "OWN_GOAL" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "PENALTIES_SAVED" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "PENALTIES_MISSED" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "YELLOW_CARDS" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "RED_CARDS" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "SAVES" NUMBER(5,0) VISIBLE DEFAULT 0 NOT NULL,
  "POINTS" NUMBER VISIBLE DEFAULT 0 NOT NULL,
  "PLAYER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PLAYER_STAT
-- ----------------------------
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '78');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '88');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '95');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '640');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '76');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '83');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '87');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '89');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '90');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '91');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '483');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '498');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '569');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '594');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '80');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '92');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '94');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '556');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '619');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '673');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '77');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '79');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '81');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '82');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '84');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '10', '85');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '86');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '93');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '96');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '97');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '479');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '499');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '524');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '614');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '628');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '662');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '699');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '4');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '6');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '20');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '530');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '694');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '5');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '8');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '9');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '11');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '14');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '16');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '23');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '24');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '27');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '67');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '466');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '590');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '695');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '2');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '532');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '559');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '572');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '1');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '3');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '7');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '12');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '13');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '15');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '17');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '18');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '21');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '22');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '25');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '26');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '478');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '531');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '558');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '664');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '692');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '693');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '205');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '213');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '455');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '201');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '207');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '208');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '209');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '217');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '218');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '219');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '220');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '340');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '473');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '639');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '645');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '200');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '204');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '573');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '202');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '203');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '206');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '210');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '211');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '212');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '214');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '215');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '216');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '458');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '505');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '587');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '646');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '647');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '426');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '434');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '435');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '436');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '438');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '440');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '441');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '442');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '461');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '547');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '548');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '661');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '687');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '689');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '430');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '445');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '523');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '583');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '428');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '429');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '12', '431');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '432');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '433');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '437');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '439');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '443');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '446');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '470');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '549');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '635');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '685');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '686');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '427');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '444');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '452');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '475');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '611');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '621');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '391');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '381');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '385');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '392');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '394');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '397');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '399');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '402');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '403');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '405');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '467');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '495');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '557');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '669');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '679');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '698');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '380');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '383');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '388');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '393');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '395');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '404');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '450');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '468');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '469');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '472');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '377');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '379');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '382');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '384');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '387');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '390');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '396');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '398');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '400');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '401');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '454');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '6', '618');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '633');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '676');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '677');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '376');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '389');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '574');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '642');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '40');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '47');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '48');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '49');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '337');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '568');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '10');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '31');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '36');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '38');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '44');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '6', '45');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '46');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '52');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '168');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '610');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '670');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '684');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '28');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '30');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '596');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '650');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '691');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '29');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '32');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '34');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '35');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '37');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '41');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '43');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '50');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '51');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '492');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '496');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '497');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '526');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '638');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '681');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '105');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '354');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('5', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '378');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '104');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '111');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '533');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '700');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '98');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '99');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '100');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '103');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '106');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '110');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '113');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '451');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '534');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '565');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '585');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '112');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '114');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '117');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '480');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '101');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '102');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '107');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '108');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '115');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '116');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '118');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '575');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '578');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '63');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '72');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '447');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '500');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '535');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '595');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '655');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '56');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '59');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '61');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '62');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '68');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '71');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '536');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '560');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '584');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '653');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '54');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '65');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '69');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '476');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '688');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '53');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '55');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '57');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '60');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '64');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '66');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '70');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '73');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '74');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '75');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '462');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '537');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '538');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '612');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('7', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '654');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '271');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '272');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '274');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '276');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '277');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '281');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '285');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '289');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '459');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '485');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '511');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '512');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '636');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '269');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '278');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '579');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '273');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '16', '275');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '279');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '283');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '284');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '286');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '288');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '510');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '555');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '632');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '270');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '280');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '509');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '187');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '189');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '550');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '577');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '184');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '185');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '190');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '194');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '198');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '463');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '608');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '657');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '183');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '199');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '490');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '182');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '186');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '188');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '191');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '192');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '193');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '195');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '196');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '197');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '267');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '287');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '551');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '552');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '576');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '600');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '601');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '624');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '631');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '658');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '145');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '316');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '317');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '318');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '320');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '323');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '325');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '328');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '330');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '449');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '471');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '528');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '581');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '5', '648');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '683');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '315');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '322');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '329');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '516');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '649');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '290');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '319');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '321');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '324');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '326');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '327');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '331');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '456');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '457');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '515');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '580');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '643');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '313');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '314');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '448');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '666');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '228');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '235');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '224');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '6', '229');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '234');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '237');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '238');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '241');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '243');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '245');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '246');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '247');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '248');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '626');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '627');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '660');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '223');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '562');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('2', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '563');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '231');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '242');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '656');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '221');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '222');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '225');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '226');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '227');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '230');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '232');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '233');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '236');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '239');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '240');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '244');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '506');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '553');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '620');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '625');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('8', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '696');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '177');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '180');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '545');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '564');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '591');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '602');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '607');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '622');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '165');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '169');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '175');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '178');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '179');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '502');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '544');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '570');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '623');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '674');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '675');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '170');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '181');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '481');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '571');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '616');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '42');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '163');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '164');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '166');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '167');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '171');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '172');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '173');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '174');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '176');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '10', '282');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '363');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '482');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '484');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '503');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '504');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '613');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '630');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '332');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '335');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '336');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '339');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '341');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '346');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '347');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '349');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '350');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '517');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '680');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '344');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '345');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '348');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '518');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '519');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '525');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '338');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '342');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '343');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '351');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '460');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '491');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '546');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '567');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '665');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '667');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '1', '0', '2', '0', '0', '0', '0', '0', '0', '5', '333');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '334');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '637');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('6', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '641');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '19');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '291');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '297');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '298');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '304');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '306');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '308');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '309');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '312');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '599');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '609');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '697');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '109');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '296');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '300');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '307');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '310');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '39');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '30', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '120');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '8', '134');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '126');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '136');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '60', '1', '0', '1', '0', '0', '0', '0', '0', '0', '5', '529');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '119');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '121');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '122');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '127');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '133');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '135');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '139');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '142');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '501');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '527');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '539');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '690');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '6', '2', '129');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '90', '0', '1', '0', '0', '0', '0', '0', '0', '540', '143');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '606');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '123');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '124');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '125');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '130');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '131');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '132');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '137');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '138');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '140');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '141');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '592');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '671');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '672');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '149');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '153');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '159');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '542');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '586');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '147');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '150');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '151');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '158');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '161');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '162');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '474');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '477');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '488');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '493');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '540');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '146');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '-1', '156');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '90', '0', '0', '3', '0', '0', '0', '0', '0', '6', '3', '561');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '144');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '148');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '152');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '154');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '155');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '157');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '160');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '386');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '464');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '541');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('4', '1', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '543');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '58');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '292');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '293');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '299');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '301');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '302');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '303');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '305');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '311');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '465');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '678');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '294');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '295');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '513');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '514');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '406');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '412');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '416');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '419');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '420');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '421');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '422');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '423');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '522');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '582');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '589');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '634');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '652');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '413');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '10', '128');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '409');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '410');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '411');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '414');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '415');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '417');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '418');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '424');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '425');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '521');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '554');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '617');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '644');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '682');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '407');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '408');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '489');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6', '356');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '359');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '362');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '365');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '366');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '369');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '372');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '373');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '375');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '487');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '597');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '668');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '701');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '702');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '357');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '520');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '355');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '358');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '360');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '361');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '364');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '367');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '368');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '370');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '371');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '374');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '494');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '588');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '598');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '352');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '353');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '486');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '659');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '508');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '566');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '605');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '629');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '263');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '663');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '249');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '252');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '253');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '256');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '258');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '259');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '262');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '264');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '603');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '604');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '651');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '257');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '260');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '593');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '615');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '33');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '250');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '251');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '254');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '255');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '261');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '265');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '266');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '268');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '453');
INSERT INTO "PROJECT"."PLAYER_STAT" VALUES ('10', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '507');

-- ----------------------------
-- Table structure for TEAM
-- ----------------------------
DROP TABLE "PROJECT"."TEAM";
CREATE TABLE "PROJECT"."TEAM" (
  "TEAM_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "TEAM_ABRV" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "TEAM_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "KIT" VARCHAR2(255 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of TEAM
-- ----------------------------
INSERT INTO "PROJECT"."TEAM" VALUES ('1', 'ARS', 'Arsenal', 'ARS1');
INSERT INTO "PROJECT"."TEAM" VALUES ('2', 'AVL', 'Aston Villa', 'AVL1');
INSERT INTO "PROJECT"."TEAM" VALUES ('3', 'BRE', 'Brentford', 'BRE1');
INSERT INTO "PROJECT"."TEAM" VALUES ('4', 'BHA', 'Brighton', 'BHA1');
INSERT INTO "PROJECT"."TEAM" VALUES ('5', 'BUR', 'Burnley', 'BUR1');
INSERT INTO "PROJECT"."TEAM" VALUES ('6', 'CHE', 'Chelsea', 'CHE1');
INSERT INTO "PROJECT"."TEAM" VALUES ('7', 'CRY', 'Crystal Palace', 'CRY1');
INSERT INTO "PROJECT"."TEAM" VALUES ('8', 'EVE', 'Everton', 'EVE1');
INSERT INTO "PROJECT"."TEAM" VALUES ('9', 'LEI', 'Leicester', 'LEI1');
INSERT INTO "PROJECT"."TEAM" VALUES ('10', 'LEE', 'Leeds', 'LEE1');
INSERT INTO "PROJECT"."TEAM" VALUES ('11', 'LIV', 'Liverpool', 'LIV1');
INSERT INTO "PROJECT"."TEAM" VALUES ('12', 'MCI', 'Man City BC', 'MCI1');
INSERT INTO "PROJECT"."TEAM" VALUES ('13', 'MUN', 'Man Utd', 'MUN1');
INSERT INTO "PROJECT"."TEAM" VALUES ('14', 'NEW', 'Newcastle', 'NEW1');
INSERT INTO "PROJECT"."TEAM" VALUES ('15', 'NOR', 'Norwich', 'NOR1');
INSERT INTO "PROJECT"."TEAM" VALUES ('16', 'SOU', 'Southampton', 'SOU1');
INSERT INTO "PROJECT"."TEAM" VALUES ('17', 'TOT', 'Spurs', 'TOT1');
INSERT INTO "PROJECT"."TEAM" VALUES ('18', 'WAT', 'Watford', 'WAT1');
INSERT INTO "PROJECT"."TEAM" VALUES ('19', 'WHU', 'West Ham', 'WHU1');
INSERT INTO "PROJECT"."TEAM" VALUES ('20', 'WOL', 'Wolves', 'WOL1');

-- ----------------------------
-- Table structure for USERS
-- ----------------------------
DROP TABLE "PROJECT"."USERS";
CREATE TABLE "PROJECT"."USERS" (
  "USER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "USER_NAME" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "EMAIL" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "PASSWORD" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "TEAM_NAME" VARCHAR2(50 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO "PROJECT"."USERS" VALUES ('1', 'partho', 'parthokunda@gmail.com', '1234', 'TESTFPL');
INSERT INTO "PROJECT"."USERS" VALUES ('2', 'evan', 'evan1234@gmail.com', '1234', 'EVAN FPL');

-- ----------------------------
-- Table structure for USER_TEAM
-- ----------------------------
DROP TABLE "PROJECT"."USER_TEAM";
CREATE TABLE "PROJECT"."USER_TEAM" (
  "USER_ID" NUMBER(5,0) VISIBLE NOT NULL,
  "GAMEWEEK" NUMBER(5,0) VISIBLE NOT NULL,
  "TRANSFERS_REMAINING" NUMBER(5,0) VISIBLE NOT NULL,
  "POINTS" NUMBER(5,0) VISIBLE NOT NULL,
  "TOTAL_COST" NUMBER(5,0) VISIBLE NOT NULL,
  "CAPTAIN" NUMBER(5,0) VISIBLE NOT NULL,
  "CHIP_TRIPLECAPTAIN" NUMBER(5,0) VISIBLE NOT NULL,
  "CHIP_FREEHIT" NUMBER(5,0) VISIBLE NOT NULL,
  "CHIP_BENCHBOOST" NUMBER(5,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_TEAM
-- ----------------------------
INSERT INTO "PROJECT"."USER_TEAM" VALUES ('1', '1', '1', '2', '652', '1', '1', '1', '1');
INSERT INTO "PROJECT"."USER_TEAM" VALUES ('2', '1', '1', '0', '0', '1', '1', '1', '1');

-- ----------------------------
-- Function structure for END_GAMEWEEK
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "PROJECT"."END_GAMEWEEK" AS
BEGIN

    FOR U IN (SELECT * FROM USER_TEAM
                    WHERE GAMEWEEK=CURR_WEEK)
    LOOP
        T_POINTS:=0;
        --userteam next gw data
        INSERT INTO USER_TEAM
        VALUES (U.USER_ID,U.GAMEWEEK+1,1,0,0,U.CAPTAIN,U.CHIP_TRIPLECAPTAIN,U.CHIP_FREEHIT,U.CHIP_BENCHBOOST);
        FOR F_PLAYER IN(SELECT * FROM FIELD_PLAYER WHERE USER_ID=U.USER_ID AND GAMEWEEK=CURR_WEEK)
        LOOP
            P_POINTS:=0;
--             DBMS_OUTPUT.PUT_LINE(P_POINTS);
            BEGIN
                SELECT POINTS INTO P_POINTS
                FROM PLAYER_STAT WHERE GAMEWEEK=CURR_WEEK AND PLAYER_ID=F_PLAYER.PLAYER_ID;
--                 DBMS_OUTPUT.PUT_LINE('INSIDE P');
--                 dbms_output.PUT_LINE(P_POINTS);
            end;
            --get player point add to tPoint
            T_POINTS:=T_POINTS+P_POINTS;

            --insert field player in next gw
            INSERT INTO FIELD_PLAYER
                VALUES (F_PLAYER.USER_ID,CURR_WEEK+1,F_PLAYER.PLAYER_ID);
        END LOOP;
--         --same as above for bench
        FOR F_PLAYER IN(SELECT * FROM BENCH_PLAYER WHERE USER_ID=U.USER_ID AND GAMEWEEK=CURR_WEEK)
        LOOP
            P_POINTS:=0;
            BEGIN
                SELECT POINTS INTO P_POINTS
                FROM PLAYER_STAT WHERE GAMEWEEK=CURR_WEEK AND PLAYER_ID=F_PLAYER.PLAYER_ID;
            end;
            T_POINTS:=T_POINTS+P_POINTS;
            INSERT INTO BENCH_PLAYER
                VALUES (F_PLAYER.USER_ID,CURR_WEEK+1,F_PLAYER.PLAYER_ID);
        end loop;

        UPDATE USER_TEAM
            SET POINTS=T_POINTS
        WHERE USER_ID=U.USER_ID AND GAMEWEEK=U.GAMEWEEK;
        DBMS_OUTPUT.PUT_LINE(T_POINTS);

    end loop;
    update GAMEWEEK set GAMEWEEK.CURR_WEEK=GAMEWEEK.CURR_WEEK+1;
    commit;
end;
/

-- ----------------------------
-- Function structure for GET_LEAGUE_TEAMS_POINTS
-- ----------------------------
CREATE OR REPLACE
FUNCTION "PROJECT"."GET_LEAGUE_TEAMS_POINTS" AS
BEGIN

    SELECT JOINED_GW INTO JOINING_WEEK
    FROM LEAGUE_TEAMS
    WHERE LEAGUE_CODE=L_ID AND USER_ID=U_ID;

    SELECT CURR_WEEK INTO CURRENT_WEEK
    FROM GAMEWEEK;
    T_POINTS:=0;
    P_POINTS:=0;
    FOR R IN (SELECT *
        FROM USER_TEAM
        WHERE USER_ID=U_ID AND (GAMEWEEK>=JOINING_WEEK AND GAMEWEEK<=CURRENT_WEEK)
        )
    LOOP
        P_POINTS:=R.POINTS;
        T_POINTS:=T_POINTS+P_POINTS;
    end loop;
    RETURN T_POINTS;
end;
/

-- ----------------------------
-- Function structure for HELLOWORLD
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "PROJECT"."HELLOWORLD" AS
begin
    DBMS_OUTPUT.PUT_LINE('Hello');
end;
/

-- ----------------------------
-- Primary Key structure for table BENCH_PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C007643" PRIMARY KEY ("USER_ID", "GAMEWEEK", "PLAYER_ID");

-- ----------------------------
-- Checks structure for table BENCH_PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C007519" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C007520" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C007521" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C008233" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C008234" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "SYS_C008235" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table BENCH_PLAYER
-- ----------------------------
CREATE TRIGGER "PROJECT"."DEFAULT_INSERT_BENCH_PLAYER" BEFORE INSERT ON "PROJECT"."BENCH_PLAYER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    MX_COST NUMBER;
    VALUE NUMBER;
begin

    SELECT U.TOTAL_COST INTO MX_COST
    FROM USER_TEAM U
    WHERE (U.GAMEWEEK=:NEW.GAMEWEEK) AND (U.USER_ID=:NEW.USER_ID);

    SELECT P.COST INTO VALUE
    FROM PLAYER P
    WHERE P.PLAYER_ID=:NEW.PLAYER_ID;

    IF (VALUE+MX_COST)>700 THEN
        raise_application_error(-20000, 'ERROR');
    ELSE
        update USER_TEAM set TOTAL_COST=MX_COST+VALUE where USER_ID=:NEW.USER_ID and GAMEWEEK=:NEW.GAMEWEEK;
    end if;

end;
/
CREATE TRIGGER "PROJECT"."DEFAULT_REMOVE_BENCH_PLAYER" BEFORE DELETE ON "PROJECT"."BENCH_PLAYER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    MX_COST NUMBER;
    VALUE NUMBER;
begin

    SELECT U.TOTAL_COST INTO MX_COST
    FROM USER_TEAM U
    WHERE (U.GAMEWEEK=:OLD.GAMEWEEK) AND (U.USER_ID=:OLD.USER_ID);

    SELECT P.COST INTO VALUE
    FROM PLAYER P
    WHERE P.PLAYER_ID=:OLD.PLAYER_ID;

    MX_COST:=MX_COST-VALUE;

    update USER_TEAM set TOTAL_COST=MX_COST where USER_ID=:OLD.USER_ID and GAMEWEEK=:OLD.GAMEWEEK;


end;
/

-- ----------------------------
-- Primary Key structure for table FIELD_PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007648" PRIMARY KEY ("USER_ID", "GAMEWEEK", "PLAYER_ID");

-- ----------------------------
-- Checks structure for table FIELD_PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007522" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007523" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007524" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007645" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007646" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007647" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C008239" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C008240" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C008241" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table FIELD_PLAYER
-- ----------------------------
CREATE TRIGGER "PROJECT"."DEFAULT_INSERT_FIELD_PLAYER" BEFORE INSERT ON "PROJECT"."FIELD_PLAYER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    MX_COST NUMBER;
    VALUE NUMBER;
begin

    SELECT U.TOTAL_COST INTO MX_COST
    FROM USER_TEAM U
    WHERE (U.GAMEWEEK=:NEW.GAMEWEEK) AND (U.USER_ID=:NEW.USER_ID);

    SELECT P.COST INTO VALUE
    FROM PLAYER P
    WHERE P.PLAYER_ID=:NEW.PLAYER_ID;

    IF (VALUE+MX_COST)>700 THEN
        raise_application_error(-20000, 'ERROR MAX TEAM COST REACHED');
    ELSE
        update USER_TEAM set TOTAL_COST=MX_COST+VALUE where GAMEWEEK=:NEW.GAMEWEEK and USER_ID=:NEW.USER_ID;
    end if;

end;
/
CREATE TRIGGER "PROJECT"."DEFAULT_REMOVE_FIELD_PLAYER" BEFORE DELETE ON "PROJECT"."FIELD_PLAYER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    MX_COST NUMBER;
    VALUE NUMBER;
begin

    SELECT U.TOTAL_COST INTO MX_COST
    FROM USER_TEAM U
    WHERE (U.GAMEWEEK=:OLD.GAMEWEEK) AND (U.USER_ID=:OLD.USER_ID);

    SELECT P.COST INTO VALUE
    FROM PLAYER P
    WHERE P.PLAYER_ID=:OLD.PLAYER_ID;

    MX_COST:=MX_COST-VALUE;

    update USER_TEAM set TOTAL_COST=MX_COST where USER_ID=:OLD.USER_ID and GAMEWEEK=:OLD.GAMEWEEK;


end;
/

-- ----------------------------
-- Primary Key structure for table FIXTURE
-- ----------------------------
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007609" PRIMARY KEY ("MATCH_ID");

-- ----------------------------
-- Checks structure for table FIXTURE
-- ----------------------------
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007525" CHECK ("MATCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007528" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007529" CHECK ("HOME_TEAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007530" CHECK ("AWAY_TEAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007608" CHECK ("MATCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007713" CHECK ("HOME_TEAM_SCORE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007714" CHECK ("AWAY_TEAM_SCORE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007715" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007716" CHECK ("HOME_TEAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007717" CHECK ("AWAY_TEAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007767" CHECK ("HOME_TEAM_SCORE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C007768" CHECK ("AWAY_TEAM_SCORE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C008092" CHECK ("MATCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C008093" CHECK ("HOME_TEAM_SCORE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C008094" CHECK ("AWAY_TEAM_SCORE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C008095" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C008096" CHECK ("HOME_TEAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "SYS_C008097" CHECK ("AWAY_TEAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table FIXTURE
-- ----------------------------
CREATE TRIGGER "PROJECT"."AUTO_INCREASE_M_ID_FIXTURE" BEFORE INSERT ON "PROJECT"."FIXTURE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    MATCH_COUNT NUMBER;

begin
    SELECT COUNT(MATCH_ID) INTO MATCH_COUNT
    FROM FIXTURE;
    IF (:NEW.MATCH_ID IS NULL) THEN
        :NEW.MATCH_ID:=MATCH_COUNT+1;
    end if;
    if(:NEW.KICKOFF_TIME IS NULL) THEN
        :NEW.KICKOFF_TIME:=SYSDATE;
    end if;
    if(:NEW.KICKOFF_TIME IS NULL) THEN
        :NEW.KICKOFF_TIME:=SYSDATE;
    end if;
    if(:NEW.HOME_TEAM_SCORE IS NULL) THEN
        :NEW.HOME_TEAM_SCORE:=0;
    end if;
    if(:NEW.AWAY_TEAM_SCORE IS NULL) THEN
        :NEW.AWAY_TEAM_SCORE:=0;
    end if;
end;
/
CREATE TRIGGER "PROJECT"."GW_TEAM_CHECK" BEFORE INSERT ON "PROJECT"."FIXTURE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	H_C NUMBER;
    A_C NUMBER;
--     INVALID_FIXTURE EXCEPTION;
	F_NAME VARCHAR2(100);
	L_NAME VARCHAR2(100);
	POS VARCHAR2(100);
	SQD_NUMBER NUMBER;
	TOT_POINT NUMBER;
	CST NUMBER;
	T_ID NUMBER;
BEGIN
    BEGIN
        Select count(F.HOME_TEAM) into H_C
        from FIXTURE F
        where F.GAMEWEEK= :NEW.GAMEWEEK AND F.HOME_TEAM=:NEW.HOME_TEAM;

        Select count(F.AWAY_TEAM) into A_C
        from FIXTURE F
        where F.GAMEWEEK= :NEW.GAMEWEEK AND F.AWAY_TEAM=:NEW.AWAY_TEAM;

        IF (H_C>0) THEN
--             RAISE INVALID_FIXTURE;
            raise_application_error(-20000, 'ERROR');
        end if;
        IF(A_C>0) THEN
            raise_application_error(-20000, 'ERROR');
        end if;
    end;

	--INSERT INTO PLAYER VALUES(P_ID,F_NAME,L_NAME,POS,SQD_NUMBER,TOT_POINT,CST,T_ID);
END;
/

-- ----------------------------
-- Primary Key structure for table H2H_FIXTURES
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C007666" PRIMARY KEY ("LEAGUE_CODE", "USER_A", "USER_B", "GAMEWEEK");

-- ----------------------------
-- Checks structure for table H2H_FIXTURES
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C007531" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C007532" CHECK ("USER_A" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C007533" CHECK ("USER_B" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C007534" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C008177" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C008178" CHECK ("USER_A" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C008179" CHECK ("USER_B" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "SYS_C008180" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table H2H_LEAGUE
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007664" PRIMARY KEY ("LEAGUE_CODE");

-- ----------------------------
-- Checks structure for table H2H_LEAGUE
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007535" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007536" CHECK ("LEAGUE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007537" CHECK ("START_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007538" CHECK ("REQUIRED_TEAMS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007539" CHECK ("ADMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007684" CHECK ("LEAGUE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007685" CHECK ("START_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007686" CHECK ("REQUIRED_TEAMS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C007687" CHECK ("ADMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C008166" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C008167" CHECK ("LEAGUE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C008168" CHECK ("START_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C008169" CHECK ("REQUIRED_TEAMS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "SYS_C008170" CHECK ("ADMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table H2H_TEAMS
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007665" PRIMARY KEY ("LEAGUE_CODE", "USER_ID");

-- ----------------------------
-- Checks structure for table H2H_TEAMS
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007540" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007541" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007542" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007543" CHECK ("WIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007544" CHECK ("LOSE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007545" CHECK ("DRAW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007709" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007710" CHECK ("WIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007711" CHECK ("LOSE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C007712" CHECK ("DRAW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C008185" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C008186" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C008187" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C008188" CHECK ("WIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C008189" CHECK ("LOSE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "SYS_C008190" CHECK ("DRAW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table LEAGUE
-- ----------------------------
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007658" PRIMARY KEY ("LEAGUE_CODE");

-- ----------------------------
-- Checks structure for table LEAGUE
-- ----------------------------
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007546" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007547" CHECK ("LEAGUE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007548" CHECK ("START_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007549" CHECK ("ADMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007550" CHECK ("AVERAGE_POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007719" CHECK ("LEAGUE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007720" CHECK ("START_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007721" CHECK ("ADMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C007722" CHECK ("AVERAGE_POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C008198" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C008199" CHECK ("LEAGUE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C008200" CHECK ("START_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C008201" CHECK ("ADMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "SYS_C008202" CHECK ("AVERAGE_POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table LEAGUE
-- ----------------------------
CREATE TRIGGER "PROJECT"."AUTO_INCREASE_LEAGUE_CODE" BEFORE INSERT OR UPDATE ON "PROJECT"."LEAGUE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    P_COUNT NUMBER;
    WK NUMBER;
begin
    SELECT NVL(MAX(LEAGUE_CODE),0) INTO P_COUNT
    FROM LEAGUE;
    IF (:NEW.LEAGUE_CODE IS NULL) THEN
        :NEW.LEAGUE_CODE:=P_COUNT+1;
    END IF;
    IF(:NEW.START_GW IS NULL ) THEN
        SELECT CURR_WEEK INTO WK
        FROM GAMEWEEK;
        :NEW.START_GW:=WK;
    end if;
    IF(:NEW.AVERAGE_POINTS IS NULL ) THEN
        :NEW.AVERAGE_POINTS:=0;
    end if;
end;
/
CREATE TRIGGER "PROJECT"."LEAGUEADMINTEAMINSERT" AFTER INSERT ON "PROJECT"."LEAGUE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
        insert into league_teams values(:new.league_code,:new.admin,:new.start_gw);
    end;
/
CREATE TRIGGER "PROJECT"."ON_DELETE_LEAGUE" BEFORE DELETE ON "PROJECT"."LEAGUE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
        delete from LEAGUE_TEAMS where LEAGUE_TEAMS.LEAGUE_CODE=:old.league_code;
    end;
/

-- ----------------------------
-- Primary Key structure for table LEAGUE_TEAMS
-- ----------------------------
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C007661" PRIMARY KEY ("LEAGUE_CODE", "USER_ID");

-- ----------------------------
-- Checks structure for table LEAGUE_TEAMS
-- ----------------------------
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C007551" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C007552" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C007553" CHECK ("JOINED_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C007660" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C007708" CHECK ("JOINED_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C008209" CHECK ("LEAGUE_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C008210" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "SYS_C008211" CHECK ("JOINED_GW" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table LEAGUE_TEAMS
-- ----------------------------
CREATE TRIGGER "PROJECT"."AUTO_CALCULATE_LEAGUE_TEAMS_GAMEWEEK" BEFORE INSERT OR UPDATE ON "PROJECT"."LEAGUE_TEAMS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    P_COUNT NUMBER;
    WK NUMBER;
begin

    IF (:NEW.JOINED_GW IS NULL) THEN
        SELECT CURR_WEEK INTO WK
        FROM GAMEWEEK;
        :NEW.JOINED_GW:=WK;
    END IF;

end;
/

-- ----------------------------
-- Primary Key structure for table PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007607" PRIMARY KEY ("PLAYER_ID");

-- ----------------------------
-- Checks structure for table PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007554" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007555" CHECK ("FIRST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007556" CHECK ("LAST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007557" CHECK ("POSITION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007558" CHECK ("COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007559" CHECK ("TEAM_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007606" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007701" CHECK ("FIRST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007702" CHECK ("LAST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007703" CHECK ("POSITION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007704" CHECK ("SQUAD_NUMBER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY DISABLE NOVALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007705" CHECK ("TOTAL_POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY DISABLE NOVALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007706" CHECK ("COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C007707" CHECK ("TEAM_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C008107" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C008108" CHECK ("FIRST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C008109" CHECK ("LAST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C008110" CHECK ("POSITION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C008113" CHECK ("COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "SYS_C008114" CHECK ("TEAM_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PLAYER
-- ----------------------------
CREATE TRIGGER "PROJECT"."AUTO_INCREASE_PID_PLAYER" BEFORE INSERT ON "PROJECT"."PLAYER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    P_COUNT NUMBER;

begin
    SELECT COUNT(PLAYER_ID) INTO P_COUNT
    FROM PLAYER;
    IF (:NEW.PLAYER_ID IS NULL) THEN
        :NEW.PLAYER_ID:=P_COUNT+1;
    END IF;
end;
/
CREATE TRIGGER "PROJECT"."PLAYER_UPDATE" BEFORE INSERT ON "PROJECT"."PLAYER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	PID NUMBER;
	F_NAME VARCHAR2(100);
	L_NAME VARCHAR2(100);
	POS VARCHAR2(100);
	SQD_NUMBER NUMBER;
	TOT_POINT NUMBER;
	CST NUMBER;
	T_ID NUMBER;
BEGIN
	PID:=:NEW.PLAYER_ID;
	F_NAME:=:NEW.FIRST_NAME;
	L_NAME:=:NEW.LAST_NAME;
	POS:=:NEW.POSITION;
	SQD_NUMBER:=:NEW.SQUAD_NUMBER;
	TOT_POINT:=:NEW.TOTAL_POINTS;
	CST:=:NEW.COST;
	T_ID:=:NEW.TEAM_ID;
	IF (SQD_NUMBER is NULL) THEN
		:NEW.SQUAD_NUMBER:=0;
	END IF;
	IF (TOT_POINT is NULL) THEN
		:NEW.TOTAL_POINTS:=0;
	END IF;
	--INSERT INTO PLAYER VALUES(P_ID,F_NAME,L_NAME,POS,SQD_NUMBER,TOT_POINT,CST,T_ID);
END;
/

-- ----------------------------
-- Primary Key structure for table PLAYER_STAT
-- ----------------------------
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007623" PRIMARY KEY ("PLAYER_ID", "MATCH_ID");

-- ----------------------------
-- Checks structure for table PLAYER_STAT
-- ----------------------------
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007560" CHECK ("MATCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007561" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007562" CHECK ("MIN_PLAYED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007563" CHECK ("GOALS_SCORED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007564" CHECK ("ASSIST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007565" CHECK ("GOALS_CONCEDED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007566" CHECK ("OWN_GOAL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007567" CHECK ("PENALTIES_SAVED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007568" CHECK ("PENALTIES_MISSED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007569" CHECK ("YELLOW_CARDS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007570" CHECK ("RED_CARDS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007571" CHECK ("SAVES" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007572" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007573" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007619" CHECK ("MATCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007620" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007688" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007689" CHECK ("MIN_PLAYED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007690" CHECK ("GOALS_SCORED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007691" CHECK ("ASSIST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007692" CHECK ("GOALS_CONCEDED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007693" CHECK ("OWN_GOAL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007694" CHECK ("PENALTIES_SAVED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007695" CHECK ("PENALTIES_MISSED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007696" CHECK ("YELLOW_CARDS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007697" CHECK ("RED_CARDS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007698" CHECK ("SAVES" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C007700" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008125" CHECK ("MATCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008126" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008127" CHECK ("MIN_PLAYED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008128" CHECK ("GOALS_SCORED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008129" CHECK ("ASSIST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008130" CHECK ("GOALS_CONCEDED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008131" CHECK ("OWN_GOAL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008132" CHECK ("PENALTIES_SAVED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008133" CHECK ("PENALTIES_MISSED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008134" CHECK ("YELLOW_CARDS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008135" CHECK ("RED_CARDS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008136" CHECK ("SAVES" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008137" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "SYS_C008138" CHECK ("PLAYER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PLAYER_STAT
-- ----------------------------
CREATE TRIGGER "PROJECT"."AUTO_CALC_GOALS_CONCEDED" BEFORE INSERT OR UPDATE ON "PROJECT"."PLAYER_STAT" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    MATCH_COUNT NUMBER;
    M_ID number;
    CONCEDED NUMBER;
    T_ID NUMBER;
    HOME_COUNT NUMBER;
    AWAY_COUNT NUMBER;
begin
    M_ID:=:new.MATCH_ID;

    SELECT TEAM_ID INTO T_ID
    FROM PLAYER
    WHERE(PLAYER.PLAYER_ID=:NEW.PLAYER_ID);

    SELECT COUNT(F.MATCH_ID) INTO HOME_COUNT
    FROM FIXTURE F
    WHERE F.HOME_TEAM=T_ID AND F.MATCH_ID=M_ID;

    SELECT COUNT(F.MATCH_ID) INTO AWAY_COUNT
    FROM FIXTURE F
    WHERE F.AWAY_TEAM=T_ID AND F.MATCH_ID=M_ID;

    IF(HOME_COUNT=1) THEN
        SELECT AWAY_TEAM_SCORE INTO CONCEDED
        FROM FIXTURE WHERE FIXTURE.MATCH_ID=M_ID;
    ELSIF (AWAY_COUNT=1) THEN
        SELECT HOME_TEAM_SCORE INTO CONCEDED
        FROM FIXTURE WHERE FIXTURE.MATCH_ID=M_ID;
    END IF;
    :NEW.GOALS_CONCEDED:=CONCEDED;
end;
/
CREATE TRIGGER "PROJECT"."POINT_CHECK" BEFORE INSERT OR UPDATE ON "PROJECT"."PLAYER_STAT" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    pos varchar2(100);
    gs number(5);
    gc number(5);
    assist_num number(5);
    min_played_num number(5);
    saves_num number(5);
    pen_save_num number(5);
    yellow_num number(5);
    red_num number(5);
    own_num number(5);
    miss_pen_num number(5);
    clean_sheet int;
    total_point int;
    player_point int;

begin
    select POSITION into pos from PLAYER where PLAYER.PLAYER_ID = :NEW.player_id;
    gs:= :new.GOALS_SCORED;
    gc:= :new.GOALS_CONCEDED;
    assist_num:= :new.ASSIST;
    min_played_num:= :new.MIN_PLAYED;
    saves_num:= :new.saves;
    pen_save_num:= :new.PENALTIES_SAVED;
    yellow_num:= :new.YELLOW_CARDS;
    red_num:= :new.RED_CARDS;
    own_num:= :new.OWN_GOAL;
    miss_pen_num:= :new.PENALTIES_MISSED;

    if gc=0 then clean_sheet:=1;
    else clean_sheet:=0;
    end if;

    if pos = 'Goalkeeper'  then total_point:= clean_sheet*4 + gs*6 - trunc(gc/2) + pen_save_num*5 + trunc(saves_num/3);
    elsif pos='Defender' then total_point:= clean_sheet*4 + gs*6 - trunc(gc/2);
    elsif pos='Midfielder' then total_point:= clean_sheet + gs*5;
    elsif pos='Forward' then total_point:= gs*4;
    end if;

    if min_played_num>60 then total_point:= total_point+2;
    elsif min_played_num>0 then total_point:= total_point+1;
    end if;

    total_point:= total_point + assist_num*3 - yellow_num - red_num*3 - own_num*2 - miss_pen_num*2;

    :new.POINTS:=total_point;

--     select TOTAL_POINTS into player_point from PLAYER where PLAYER.PLAYER_ID=:NEW.player_id;
--     player_point:= player_point+total_point;

    update PLAYER set TOTAL_POINTS=TOTAL_POINTS+total_point where PLAYER_ID=:new.player_id;


end;
/

-- ----------------------------
-- Primary Key structure for table TEAM
-- ----------------------------
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007611" PRIMARY KEY ("TEAM_ID");

-- ----------------------------
-- Checks structure for table TEAM
-- ----------------------------
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007574" CHECK ("TEAM_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007575" CHECK ("TEAM_ABRV" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007576" CHECK ("TEAM_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007577" CHECK ("KIT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007610" CHECK ("TEAM_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007681" CHECK ("TEAM_ABRV" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007682" CHECK ("TEAM_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C007683" CHECK ("KIT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C008083" CHECK ("TEAM_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C008084" CHECK ("TEAM_ABRV" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C008085" CHECK ("TEAM_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."TEAM" ADD CONSTRAINT "SYS_C008086" CHECK ("KIT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USERS
-- ----------------------------
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007651" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Checks structure for table USERS
-- ----------------------------
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007578" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007579" CHECK ("USER_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007580" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007581" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007582" CHECK ("TEAM_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007673" CHECK ("USER_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007674" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007675" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C007676" CHECK ("TEAM_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C008156" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C008157" CHECK ("USER_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C008158" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C008159" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USERS" ADD CONSTRAINT "SYS_C008160" CHECK ("TEAM_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table USERS
-- ----------------------------
CREATE TRIGGER "PROJECT"."AUTO_INCREASE_USERID" BEFORE INSERT ON "PROJECT"."USERS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare
    P_COUNT NUMBER;

begin
    SELECT COUNT(USER_ID) INTO P_COUNT
    FROM USERS;
    IF (:NEW.USER_ID IS NULL) THEN
        :NEW.USER_ID:=P_COUNT+1;
    END IF;
end;
/

-- ----------------------------
-- Primary Key structure for table USER_TEAM
-- ----------------------------
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007652" PRIMARY KEY ("USER_ID", "GAMEWEEK");

-- ----------------------------
-- Checks structure for table USER_TEAM
-- ----------------------------
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007583" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007584" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007585" CHECK ("TRANSFERS_REMAINING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007586" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007587" CHECK ("TOTAL_COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007588" CHECK ("CAPTAIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007589" CHECK ("CHIP_TRIPLECAPTAIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007590" CHECK ("CHIP_FREEHIT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007591" CHECK ("CHIP_BENCHBOOST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007677" CHECK ("TRANSFERS_REMAINING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007678" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007679" CHECK ("TOTAL_COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C007680" CHECK ("CAPTAIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008217" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008218" CHECK ("GAMEWEEK" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008219" CHECK ("TRANSFERS_REMAINING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008220" CHECK ("POINTS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008221" CHECK ("TOTAL_COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008222" CHECK ("CAPTAIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008223" CHECK ("CHIP_TRIPLECAPTAIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008224" CHECK ("CHIP_FREEHIT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "SYS_C008225" CHECK ("CHIP_BENCHBOOST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table USER_TEAM
-- ----------------------------
CREATE TRIGGER "PROJECT"."DEFAULT_INSERT_USER_TEAM" BEFORE INSERT ON "PROJECT"."USER_TEAM" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
declare

begin
    IF (:NEW.TRANSFERS_REMAINING IS NULL) THEN
        :NEW.TRANSFERS_REMAINING:=1;
    END IF;
    IF (:NEW.TOTAL_COST IS NULL) THEN
        :NEW.TOTAL_COST:=0;
    END IF;
    IF (:NEW.CAPTAIN IS NULL) THEN
        :NEW.CAPTAIN:=1;
    END IF;
    IF(:NEW.CHIP_TRIPLECAPTAIN IS NULL) THEN
        :NEW.CHIP_TRIPLECAPTAIN:=1;
    END IF;
    IF(:NEW.CHIP_FREEHIT  IS NULL) THEN
        :NEW.CHIP_FREEHIT :=1;
    END IF;
    IF(:NEW.CHIP_BENCHBOOST IS NULL) THEN
        :NEW.CHIP_BENCHBOOST:=1;
    END IF;

end;
/

-- ----------------------------
-- Foreign Keys structure for table BENCH_PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "P_ID" FOREIGN KEY ("PLAYER_ID") REFERENCES "PROJECT"."PLAYER" ("PLAYER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."BENCH_PLAYER" ADD CONSTRAINT "USER_ID" FOREIGN KEY ("USER_ID", "GAMEWEEK") REFERENCES "PROJECT"."USER_TEAM" ("USER_ID", "GAMEWEEK") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table FIELD_PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "SYS_C007649" FOREIGN KEY ("PLAYER_ID") REFERENCES "PROJECT"."PLAYER" ("PLAYER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIELD_PLAYER" ADD CONSTRAINT "USER_ID_GA" FOREIGN KEY ("USER_ID", "GAMEWEEK") REFERENCES "PROJECT"."USER_TEAM" ("USER_ID", "GAMEWEEK") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table FIXTURE
-- ----------------------------
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "AWAY_TEAM" FOREIGN KEY ("AWAY_TEAM") REFERENCES "PROJECT"."TEAM" ("TEAM_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."FIXTURE" ADD CONSTRAINT "HOME_TEAM" FOREIGN KEY ("HOME_TEAM") REFERENCES "PROJECT"."TEAM" ("TEAM_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table H2H_FIXTURES
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "LEAGUE_FIXTURE" FOREIGN KEY ("LEAGUE_CODE") REFERENCES "PROJECT"."H2H_LEAGUE" ("LEAGUE_CODE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "TEAM1" FOREIGN KEY ("USER_A") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_FIXTURES" ADD CONSTRAINT "TEAM2" FOREIGN KEY ("USER_B") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table H2H_LEAGUE
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_LEAGUE" ADD CONSTRAINT "H2H_ADMIN" FOREIGN KEY ("ADMIN") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table H2H_TEAMS
-- ----------------------------
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "H2H_CODE" FOREIGN KEY ("LEAGUE_CODE") REFERENCES "PROJECT"."H2H_LEAGUE" ("LEAGUE_CODE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."H2H_TEAMS" ADD CONSTRAINT "H2H_TEAMID" FOREIGN KEY ("USER_ID") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table LEAGUE
-- ----------------------------
ALTER TABLE "PROJECT"."LEAGUE" ADD CONSTRAINT "ADMINS" FOREIGN KEY ("ADMIN") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table LEAGUE_TEAMS
-- ----------------------------
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "LEAGUE_CONNECT" FOREIGN KEY ("LEAGUE_CODE") REFERENCES "PROJECT"."LEAGUE" ("LEAGUE_CODE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."LEAGUE_TEAMS" ADD CONSTRAINT "USER_OF_LEAGUE" FOREIGN KEY ("USER_ID") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PLAYER
-- ----------------------------
ALTER TABLE "PROJECT"."PLAYER" ADD CONSTRAINT "T_ID" FOREIGN KEY ("TEAM_ID") REFERENCES "PROJECT"."TEAM" ("TEAM_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PLAYER_STAT
-- ----------------------------
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "MATCH_ID" FOREIGN KEY ("MATCH_ID") REFERENCES "PROJECT"."FIXTURE" ("MATCH_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."PLAYER_STAT" ADD CONSTRAINT "PLAYER_ID" FOREIGN KEY ("PLAYER_ID") REFERENCES "PROJECT"."PLAYER" ("PLAYER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_TEAM
-- ----------------------------
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "CAPTAIN" FOREIGN KEY ("CAPTAIN") REFERENCES "PROJECT"."PLAYER" ("PLAYER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "PROJECT"."USER_TEAM" ADD CONSTRAINT "USER_FORTEAM" FOREIGN KEY ("USER_ID") REFERENCES "PROJECT"."USERS" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
