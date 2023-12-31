.class public Lcom/samsung/android/sdk/smp/common/database/DBContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/common/database/DBContract$Tables;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$MarketingColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$FeedbackColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$AckColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$AppFilterColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$AppReferrerColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$AppStartColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$SessionColumns;,
        Lcom/samsung/android/sdk/smp/common/database/DBContract$ExternalFeedbackColumns;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE_ACK:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ack (_id INTEGER PRIMARY KEY AUTOINCREMENT,rid TEXT NOT NULL UNIQUE,ts INTEGER NOT NULL,type TEXT NOT NULL,fail INTEGER NOT NULL,errorcode TEXT,errormsg TEXT );"

.field public static final CREATE_TABLE_APP_FILTER:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS appfilter (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT NOT NULL UNIQUE,value TEXT );"

.field public static final CREATE_TABLE_APP_START:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS start (_id INTEGER PRIMARY KEY AUTOINCREMENT,start TEXT NOT NULL,fail INTEGER NOT NULL );"

.field public static final CREATE_TABLE_EXTERNAL_FEEDBACK:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS externalfeedback (_id INTEGER PRIMARY KEY AUTOINCREMENT,path TEXT NOT NULL UNIQUE,fail INTEGER NOT NULL,timestamp INTEGER NOT NULL );"

.field public static final CREATE_TABLE_FEEDBACK:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS feedback (_id INTEGER PRIMARY KEY AUTOINCREMENT,mid TEXT NOT NULL UNIQUE CONSTRAINT fk_cardtable_mid REFERENCES card(mid) ON DELETE CASCADE,lfbid INTEGER NOT NULL,lts INTEGER NOT NULL,feedbacks TEXT NOT NULL,state TEXT NOT NULL,appupdateadded INTEGER,rebootadded INTEGER,debugaction TEXT );"

.field public static final CREATE_TABLE_MARKETING:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS card (_id INTEGER PRIMARY KEY AUTOINCREMENT, mid TEXT NOT NULL UNIQUE,msgtype TEXT,data TEXT,state TEXT NOT NULL,extra TEXT,mrt INTEGER NOT NULL,mdt INTEGER,mct INTEGER,expdt INTEGER,landingredirected INTEGER,fail INTEGER NOT NULL );"

.field public static final CREATE_TABLE_REFERRER:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS appreferrer (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT NOT NULL UNIQUE,value TEXT );"

.field public static final CREATE_TABLE_SESSION:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS session (_id INTEGER PRIMARY KEY AUTOINCREMENT,session TEXT NOT NULL,count INTEGER NOT NULL,fail INTEGER NOT NULL );"

.field public static final CREATE_TRIGGER_DELETE_FEEDBACK:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS trigger_delete_fb BEFORE DELETE ON card FOR EACH ROW BEGIN  DELETE FROM feedback WHERE feedback.mid= OLD.mid; END"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
