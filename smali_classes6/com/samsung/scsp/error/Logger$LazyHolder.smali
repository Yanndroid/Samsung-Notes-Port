.class Lcom/samsung/scsp/error/Logger$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/error/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static LOGGER_CONFIG:Lcom/samsung/scsp/error/LoggerConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/scsp/error/Logger$LazyHolder;->DEBUG:Z

    new-instance v0, Lcom/samsung/scsp/error/LoggerConfig;

    const-string v1, "[SCPMSDK]"

    invoke-direct {v0, v1}, Lcom/samsung/scsp/error/LoggerConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/scsp/error/Logger$LazyHolder;->LOGGER_CONFIG:Lcom/samsung/scsp/error/LoggerConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/scsp/error/LoggerConfig;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/error/Logger$LazyHolder;->LOGGER_CONFIG:Lcom/samsung/scsp/error/LoggerConfig;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/samsung/scsp/error/LoggerConfig;)Lcom/samsung/scsp/error/LoggerConfig;
    .locals 0

    sput-object p0, Lcom/samsung/scsp/error/Logger$LazyHolder;->LOGGER_CONFIG:Lcom/samsung/scsp/error/LoggerConfig;

    return-object p0
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/scsp/error/Logger$LazyHolder;->DEBUG:Z

    return v0
.end method
