.class public final Lorg/apache/poi/util/POILogFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static _loggerClassName:Ljava/lang/String;

.field private static final _loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/util/POILogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final _nullLogger:Lorg/apache/poi/util/POILogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/util/NullLogger;

    invoke-direct {v0}, Lorg/apache/poi/util/NullLogger;-><init>()V

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/poi/util/POILogger;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;
    .locals 3

    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.apache.poi.util.POILogger"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/POILogger;

    if-nez v0, :cond_2

    :try_start_1
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/POILogger;->initialize(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    :goto_0
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
