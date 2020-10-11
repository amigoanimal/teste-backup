/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
italo teste mais uma vez vamos lá ver como está
mais uma vez aaaaaa
uhuuuuuuu
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     07/05/2020 22:20:13                          */
/*==============================================================*/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
CODEMPRESA           INTEGER                        not null,
ATIVACAOGERAL        VARCHAR(10),
ATRIBUIRCONF         VARCHAR(08),
IPCOMPUTADOR         VARCHAR(40),
SERIALHD             VARCHAR(35),
SERIALPLACAMAE       VARCHAR(60),
NUMEROEQUIP          INTEGER,
NOMEEMPRESA          VARCHAR(80),  
RAZAOSOCIALEMPRESA   VARCHAR(80), 
ENDERECOEMPRESA      VARCHAR(60),  
CIDADEEMPRESA        VARCHAR(50),  
CNPJEMPRESA          VARCHAR(20),  
INSESTEMPRESA        VARCHAR(15),  
FONEEMPRESA          VARCHAR(14),  
FAXEMPRESA           VARCHAR(14),   
UFEMPRESA            VARCHAR(02),   
CEPEMPRESA           VARCHAR(13),
DATAVALIDADE         DATE,
DIASEXPIRA           INTEGER,
MENSAGEM             VARCHAR(150), 
FUSOHORARIO          VARCHAR(35), 
CONTROLEESTOQUE      INTEGER,
PRADAORELATORIO      INTEGER,
PRADAOIMPRESSAO      INTEGER,
CODIGOFIXOFORN       INTEGER,  
CODIGOFIXOCLIE       INTEGER,
SENHAENTRASAIDA      VARCHAR(15),
QTDEREGISIMPRESSO    INTEGER,
SENHASEMCPF          VARCHAR(15),
SENHASTATUSDES       VARCHAR(15),
MENUEMPRESA          VARCHAR(255),
MENUCONFGERAL        VARCHAR(255),
MENUCONFCADASTRO     VARCHAR(255),
MENUCONFMOVIMENT     VARCHAR(255),
MENUCONFFINANCEIRO   VARCHAR(255),
DIASATRASOCONTAS     INTEGER,
CONFSENHACONTAS      INTEGER,
SENHAREALICONTAS     VARCHAR(15), 
CONFIMPRESSORACAD    VARCHAR(30),
CONFIMPRESSORAMOV    VARCHAR(30),
CONFIMPRESSORAFIN    VARCHAR(30),
CONFIMPRESSORAREL    VARCHAR(30), 
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODEMPRESA)
);


/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
CODPAIS              INTEGER                        not null,
SILGAPAIS            CHAR(02)                       not null,
NOMEPAIS             VARCHAR(80),
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPAIS)
);


/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
CODEST               INTEGER                        not null,
UF                   CHAR(02)                       not null,
CODPAIS              INTEGER,
DESCRICAOUF          VARCHAR(80),
CODIGO_UF_IBGE       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (UF)
);


/*==============================================================*/
/* Table: MUNICIPIOS                                            */
/*==============================================================*/
create table MUNICIPIOS (
CODCID               INTEGER                        not null,
UF                   CHAR(02),
CODIGO_UF_IBGE       INTEGER,
MUNICIPIO            VARCHAR(80),
NUMEROMUNCIPIO       INTEGER,
STATUSATIVO          VARCHAR(15),
DATACADASTRO         DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCID)
);


/*==============================================================*/
/* Table: FORNECEDOR                                            */
/*==============================================================*/
create table FORNECEDOR (
CODFORN              INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMEFORN             VARCHAR(80),
RAZAOSOCIAL          VARCHAR(80),
ENDERECOFORN         VARCHAR(50),
CIDADEFORN           VARCHAR(50),
UFFORN               CHAR(02),
BAIRROFORN           VARCHAR(50),
CNPJCPFFORN          VARCHAR(18),
CEPFORN              VARCHAR(15),
IERGFORN             VARCHAR(15),
FONEFIXOFORN         VARCHAR(14),
FONEFAXFORN          VARCHAR(14),
FONECELULAR          VARCHAR(14),
EMAIL                VARCHAR(60),
WEBSITEFORN          VARCHAR(60),
REPRESENTACAO        VARCHAR(80),
CONTATOVENDEDOR      VARCHAR(80),
FONEVENDEDOR         VARCHAR(14),
FAXVENDEDOR          VARCHAR(14),
CELULARVENDEDOR      VARCHAR(14),
EMAILVENDEDOR        VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROFORN     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,   
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODFORN)
);


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
CODCLI               INTEGER                        not null,
CODCID               INTEGER,
TIPO                 VARCHAR(20),
PESSOA               VARCHAR(20),
STATUSATIVO          VARCHAR(15),
NOMECLI              VARCHAR(80),
NOMEAPELIDOCLI       VARCHAR(80),
ENDERECOCLI          VARCHAR(80),
NUMERO               NUMERIC(6,0),
INFOCOMERCI          VARCHAR(120),
PAICLI               VARCHAR(80),
MAECLI               VARCHAR(80),
RENDACLI             NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
PROFISSAO            VARCHAR(50),
CIDADECLI            VARCHAR(50),
UFCLI                CHAR(02),
BAIRROCLI            VARCHAR(50),
CPFCNPJCLI           VARCHAR(18),
RGIECLI              VARCHAR(15),
CEPCLI               VARCHAR(12),
FONEFIXOCLI          VARCHAR(14),
FONEFAXCLI           VARCHAR(14),
FONECELCLI           VARCHAR(14),
DATANASCCLI          DATE,
EMAILCLI             VARCHAR(50),
WEBSITECLI           VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROCLI      DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCLI)
);


/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
CODVEND              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEVEND             VARCHAR(80),
NOMEAPELIDOVEND      VARCHAR(80),
ENDERECOVEND         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEVEND           VARCHAR(50),
UFVEND               CHAR(02),
BAIRROVEND           VARCHAR(50),
CPFVEND              VARCHAR(18),
RGVEND               VARCHAR(14),
CEPVEND              VARCHAR(12),
PAIVEND              VARCHAR(80),
MAEVEND              VARCHAR(80),
RENDAVEND            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXVEND          VARCHAR(14),
FONEFIXOVEND         VARCHAR(14),
FONECELVEND          VARCHAR(14),
COMISSAOVEND         NUMERIC(10,2),
SENHAVEND            VARCHAR(15),
DATANASCVEND         DATE,
EMAILVEND            VARCHAR(60),
WEBSITEVEND          VARCHAR(60),
BANCO                VARCHAR(60),
AGENCIA              VARCHAR(40),
CONTACORRENTE        VARCHAR(15),
VERIFICADOR          VARCHAR(30),
DATACADASTROVEND     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODVEND)
);


/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
CODFUNC              INTEGER                        not null,
CODCID               INTEGER,
STATUSATIVO          VARCHAR(15),
NOMEFUNC             VARCHAR(80),
NOMEAPELIDOFUNC      VARCHAR(80),
ENDERECOFUNC         VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEFUNC           VARCHAR(50),
UFFUNC               CHAR(02),
BAIRROFUNC           VARCHAR(50),
CPFFUNC              VARCHAR(18),
RGFUNC               VARCHAR(15),
CEPFUNC              VARCHAR(12),
PAIFUNC              VARCHAR(80),
MAEFUNC              VARCHAR(80),
RENDAFUNC            NUMERIC(18,2),
ESTADOCIVIL          VARCHAR(30),
FONEFAXFUNC          VARCHAR(14),
FONEFIXOFUNC         VARCHAR(14),
FONECELFUNC          VARCHAR(14),
SENHAFUNC            VARCHAR(15),
DATANASCFUNC         DATE,
EMAILFUNC            VARCHAR(50),
ADMISSAOFUNC         DATE,
DEMISSAOFUNC         DATE,
CARGOFUNC            VARCHAR(30),
SALARIOFUNC          NUMERIC(18,2),
WEBSITEFUNC          VARCHAR(60),
VERIFICADOR          VARCHAR(30),
DATACADASTROFUNC     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 500,
 primary key (CODFUNC)
);


/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
CODUSU               INTEGER                        not null,
NOMEUSU              VARCHAR(80),
LOGINUSU             VARCHAR(20),
SENHAUSU             VARCHAR(15),
PERMISSAOUSU         VARCHAR(255),
DATAUSU              DATE,
TIPOUSU              VARCHAR(20),
STATUSATIVO          VARCHAR(15),
VERIFICADOR          VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODUSU)
);


/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
CODMARC              INTEGER                        not null,
DESCRICAOMARC        VARCHAR(50),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMARC)
);


/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO (
CODPROD              INTEGER                        not null,
CODMARC              INTEGER,
CFCOD                VARCHAR(10),
TIPOPROD             VARCHAR(20),
NOMEPROD             VARCHAR(60),
TAMANHO              VARCHAR(15),
CODBARRA             VARCHAR(15),
BARRA                VARCHAR(15),
UMBCOMPRA            VARCHAR(10),
UMBVENDA             VARCHAR(10),
NCM                  VARCHAR(25),
QTUMBVENDA           NUMERIC,
QTDPROD              NUMERIC(10,3),
QTPGERAL             NUMERIC(10,3),
QTDFRANC             NUMERIC(10,3),
QTDMINPROD           NUMERIC(10,3),
PRECOCUSTOPROD       NUMERIC(18,2),
CUSTOMEDIOPROD       NUMERIC(18,5),
CUSTOREALPROD        NUMERIC(18,5),
PRECOVENDAPROD       NUMERIC(18,2),
VALORVENDAPROD       NUMERIC(18,5),
PRECOCOMPRAPROD      NUMERIC(18,5),
LUCROPROD            NUMERIC(5,2),
DESCOPROD            NUMERIC(5,2),
COMISVENDPROD        NUMERIC(5,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
TRIBUTO              VARCHAR(25),
VERIFICADOR          VARCHAR(10),
STATUSATIVO          VARCHAR(50),
DATAULTIMACOMPRA     DATE,
DATACADASTROPROD     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPROD)
);


/*==============================================================*/
/* Table: ANIMAL                                                */
/*==============================================================*/
create table ANIMAL (
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER                        not null,
NOMEANIMAL            VARCHAR(80),
RACAANIMAL            VARCHAR(50),
SEXOANIMAL            VARCHAR(30),
CORANIMAL             VARCHAR(25),
ESPECIE               VARCHAR(30),
CARACTERISTICA        VARCHAR(35), 
PESOANIMAL            NUMERIC(10,3),  
DATANASC              DATE,   
STATUSATIVO           VARCHAR(15),
DATACADASTRO          DATE,
HORACADASTRO          TIME,
DATAALTERACAO         DATE,
HORAALTERACAO         TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODANIMAL)
);


/*==============================================================*/
/* Table: MEDICO                                                */
/*==============================================================*/
create table MEDICO (
CODMEDICO            INTEGER                        not null,
CODCID               INTEGER,
NOMEMEDICO           VARCHAR(80),
CRM                  VARCHAR(40),
STATUSATIVO          VARCHAR(15),
NOMEAPELIDOMEDICO    VARCHAR(80),
ENDERECOMEDICO       VARCHAR(80),
NUMERO               NUMERIC(6,0),
CIDADEMEDICO         VARCHAR(50),
UFMEDICO             CHAR(02),
BAIRROMEDICO         VARCHAR(50),
CPFMEDICO            VARCHAR(18),
RGMEDICO             VARCHAR(15),
CEPMEDICO            VARCHAR(12),
ESTADOCIVIL          VARCHAR(30),
FONEFAXMEDICO        VARCHAR(14),
FONEFIXOMEDICO       VARCHAR(14),
FONECELMEDICO        VARCHAR(14),
DATANASCMEDICO       DATE,
EMAILMEDICO          VARCHAR(50),
ADMISSAOMEDICO       DATE,
DEMISSAOMEDICO       DATE,
SALARIOMEDICO        NUMERIC(18,2),
VERIFICADOR          VARCHAR(10),
DATACADASTROMEDICO   DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMEDICO)
);



/*==============================================================*/
/* Table: SERVICO                                               */
/*==============================================================*/
create table SERVICO (
CODSERV              INTEGER                        not null,
DESCRICAO            VARCHAR(60),
UMB                  VARCHAR(10),
CUSTOREALSERV        NUMERIC(18,5),
VALORSERVICO         NUMERIC(18,5),
DESCOSERV            NUMERIC(5,2),
COMISVENDSERV        NUMERIC(5,2),
STATUSATIVO          VARCHAR(50),
DATACADASTROSERV     DATE,
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
MOTIVODESATIVA blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSERV)
);


/*==============================================================*/
/* Table: PRODUCAO                                              */
/*==============================================================*/
create table PRODUCAO (
CODPRODUCAO          INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMPRODUCAO                                          */
/*==============================================================*/
create table ITEMPRODUCAO (
CODITEPRODUCAO       INTEGER                        not null,
CODPRODUCAO          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEPRODUCAO)
);


/*==============================================================*/
/* Table: SAIDAPRODUCAO                                         */
/*==============================================================*/
create table SAIDAPRODUCAO (
CODSAIDAPRODUCAO     INTEGER                        not null,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODSAIDAPRODUCAO)
);


/*==============================================================*/
/* Table: ITEMSAIDAPRODUCAO                                     */
/*==============================================================*/
create table ITEMSAIDAPRODUCAO (
CODITESAIPRODUCAO    INTEGER                        not null,
CODSAIDAPRODUCAO     INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITESAIPRODUCAO)
);


/*==============================================================*/
/* Table: PEDIDOCOMPRA                                          */
/*==============================================================*/
create table PEDIDOCOMPRA (
CODPEDIDOCOMPRA      INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODPEDIDOCOMPRA)
);


/*==============================================================*/
/* Table: ITEMPEDIDOCOMPRA                                      */
/*==============================================================*/
create table ITEMPEDIDOCOMPRA (
CODITEMPEDICOMPRA    INTEGER                        not null,
CODPEDIDOCOMPRA      INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMPEDICOMPRA)
);


/*==============================================================*/
/* Table: COMPRA                                                */
/*==============================================================*/
create table COMPRA (
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
NFDOC                INTEGER,
DATADOC              DATE,
DATA                 DATE,
HORA                 TIME,
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(15),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCOMPRA)
);


/*==============================================================*/
/* Table: ITEMCOMPRA                                            */
/*==============================================================*/
create table ITEMCOMPRA (
CODITEMCOMPRA        INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCOMPRA)
);


/*==============================================================*/
/* Table: ORCAMENTO                                             */
/*==============================================================*/
create table ORCAMENTO (
CODORCAMENTO         INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODORCAMENTO)
);


/*==============================================================*/
/* Table: ITEMORCAMENTO                                         */
/*==============================================================*/
create table ITEMORCAMENTO (
CODITEMORCAMENTO     INTEGER                        not null,
CODORCAMENTO         INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDCONFIR            NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMORCAMENTO)
);


/*==============================================================*/
/* Table: VENDA                                                 */
/*==============================================================*/
create table VENDA (
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CODVEND              INTEGER,
CODFUNC              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
VALORTOTAL           NUMERIC(18,2),
CONDPAG              VARCHAR(10),
QTDPARCELAS          INTEGER,
PRIVENCIMENTO        DATE,
VALORENTRADA         NUMERIC(18,2),
TIPOOPERACAO         VARCHAR(10),
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
VALORMO              NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVENDA)
);


/*==============================================================*/
/* Table: ITEMVENDA                                             */
/*==============================================================*/
create table ITEMVENDA (
CODITEMVENDA         INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODPROD              INTEGER                        not null,
TIPOPROD             VARCHAR(20),
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
QTDDEVO              NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
VALORTOTPROD         NUMERIC(18,2),
VALORTOTSERV         NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMVENDA)
);


/*==============================================================*/
/* Table: DEVOLUCAOCOMPRA                                       */
/*==============================================================*/
create table DEVOLUCAOCOMPRA (
CODDEVCOMPRA         INTEGER                        not null,
CODCOMPRA            INTEGER                        not null,
CODGERAL             INTEGER,
CODFORN              INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVCOMPRA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOCOMPRA                                   */
/*==============================================================*/
create table ITEMDEVOLUCAOCOMPRA (
CODITEMDEVCOMPRA     INTEGER                        not null,
CODDEVCOMPRA         INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVCOMPRA)
);


/*==============================================================*/
/* Table: DEVOLUCAOVENDA                                        */
/*==============================================================*/
create table DEVOLUCAOVENDA (
CODDEVVENDA          INTEGER                        not null,
CODVENDA             INTEGER                        not null,
CODGERAL             INTEGER,
CODCLI               INTEGER,
CFCOD                VARCHAR(10),
DATA                 DATE,
HORA                 TIME,
VALORTOTAL           NUMERIC(18,2),
VALORTOTIPI          NUMERIC(18,2),
VALORTOTICMS         NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODDEVVENDA)
);


/*==============================================================*/
/* Table: ITEMDEVOLUCAOVENDA                                    */
/*==============================================================*/
create table ITEMDEVOLUCAOVENDA (
CODITEMDEVVENDA      INTEGER                        not null,
CODDEVVENDA          INTEGER                        not null,
CODPROD              INTEGER                        not null,
CFCOD                VARCHAR(10),
UMB                  VARCHAR(10),
NITEM                INTEGER,
QTD                  NUMERIC(10,3),
VALORUNIT            NUMERIC(18,5),
VALORUNITREAL        NUMERIC(18,5),
VALORTOTAL           NUMERIC(18,2),
VALORTOTALREAL       NUMERIC(18,2),
JUROS                NUMERIC(5,5),
VALORJUROS           NUMERIC(18,2),
DESCONTOS            NUMERIC(5,5),
VALORDESCONTO        NUMERIC(18,2),
PORCICMS             NUMERIC,
PORCIPI              NUMERIC,
VALORIPI             NUMERIC(18,2),
VALORICMS            NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAALTERACAO        DATE, 
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMDEVVENDA)
);


/*==============================================================*/
/* Table: CONTAPAGAR                                            */
/*==============================================================*/
create table CONTAPAGAR (
CODCONTAPAGAR        INTEGER                        not null,
CODCOMPRA            INTEGER,
CODGERAL             INTEGER,
CODFORN              INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTAPAGAR)
);


/*==============================================================*/
/* Table: ITEMCONTAPAGAR                                        */
/*==============================================================*/
create table ITEMCONTAPAGAR (
CODITEMCONTAPAGAR    INTEGER                        not null,
CODCONTAPAGAR        INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATAPAGA             DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTAPAGAR)
);


/*==============================================================*/
/* Table: CONTARECEBER                                          */
/*==============================================================*/
create table CONTARECEBER (
CODCONTARECEBER      INTEGER                        not null,
CODVENDA             INTEGER,
CODGERAL             INTEGER,
CODCLI               INTEGER,
QPARCELA             INTEGER,
VALOR                NUMERIC(18,2),
VALORALTERADO        NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
DATA                 DATE,
HORA                 TIME,
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCONTARECEBER)
);


/*==============================================================*/
/* Table: ITEMCONTARECEBER                                      */
/*==============================================================*/
create table ITEMCONTARECEBER (
CODITEMCONTARECEBER  INTEGER                        not null,
CODCONTARECEBER      INTEGER                        not null,
NITEM                INTEGER,
VALORPARCELA         NUMERIC(18,2),
DATAVENC             DATE,
DATARECEB            DATE,
JUROS                NUMERIC(5,5),
DESCONTOS            NUMERIC(5,5),
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
PORCPROD             NUMERIC(5,2),
PORCSERV             NUMERIC(5,2),
VALORPAGO            NUMERIC(18,2),
VALORPRODJURO        NUMERIC(18,2),
VALORPRODDESC        NUMERIC(18,2),
VALORSERVJURO        NUMERIC(18,2),
VALORSERVDESC        NUMERIC(18,2),
VALORALJUROS         NUMERIC(18,2),
VALORALDESCONTO      NUMERIC(18,2),
VALORGERAL           NUMERIC(18,2),
PORCMO               NUMERIC(5,2),
STATUS               VARCHAR(10),
DATAATUALIZACAOPARC  DATE,
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODITEMCONTARECEBER)
);


/*==============================================================*/
/* Table: CAIXA                                                 */
/*==============================================================*/
create table CAIXA (
CODCAIXA             INTEGER                        not null,
DATA                 DATE,
HORA                 TIME,
VALORDEBITO          NUMERIC(18,2),
VALORCREDITO         NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
SALDO                NUMERIC(18,2),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODCAIXA)
);


/*==============================================================*/
/* Table: MOVIMENTOCAIXA                                        */
/*==============================================================*/
create table MOVIMENTOCAIXA (
CODMOVCAIXA          INTEGER                        not null,
CODCAIXA             INTEGER                        not null,
CODCOMPRA            INTEGER,
CODVENDA             INTEGER,
CODITEMDEVCOMPRA     INTEGER,
CODITEMDEVVENDA      INTEGER,
CODITEMCONTAPAGAR    INTEGER,
CODITEMCONTARECEBER  INTEGER,
CODFUNC              INTEGER,
DATA                 DATE,
HORA                 TIME,
VALORPROD            NUMERIC(18,2),
VALORSERV            NUMERIC(18,2),
VALORMOV             NUMERIC(18,2),
VALORMOVCREDITO      NUMERIC(18,2),
VALORMOVDEBITO       NUMERIC(18,2),
VALORTROCO           NUMERIC(18,2),
TIPOMOV              VARCHAR(30),
TIPOMO               VARCHAR(30),
STATUS               VARCHAR(25),
DATAALTERACAO        DATE,
HORAALTERACAO        TIME,
HISTORICO            blob sub_type 1 segment size 1000,
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODMOVCAIXA)
);


/*==============================================================*/
/* Table: AGENDAMENTO                                           */
/*==============================================================*/
create table AGENDAMENTO (
CODAGENDAMENTO        INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODSERV               INTEGER                        not null,
DATAAGENDA            DATE,  
HORAAGENDA            TIME, 
DATACONSULTA          DATE,  
HORACONSULTA          TIME,
STATUSAGENDAMENTO     VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODAGENDAMENTO)
);


/*==============================================================*/
/* Table: VACINA                                                */
/*==============================================================*/
create table VACINA (
CODVACINA             INTEGER                        not null,
CODANIMAL             INTEGER                        not null,
CODCLI                INTEGER,
CODMEDICO             INTEGER,
DATAVACINA            DATE,  
HORAVACINA            TIME, 
DATAREFORCO           DATE,
STATUSVACINA          VARCHAR(25),
OBSERVACAO blob sub_type 1 segment size 1000,
 primary key (CODVACINA)
);
