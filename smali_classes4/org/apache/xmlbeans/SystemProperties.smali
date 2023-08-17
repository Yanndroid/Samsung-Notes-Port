.class public Lorg/apache/xmlbeans/SystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static propertyH:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/SystemProperties;->propertyH:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/SystemProperties;->propertyH:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    sput-object p0, Lorg/apache/xmlbeans/SystemProperties;->propertyH:Ljava/util/Hashtable;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/xmlbeans/SystemProperties;->propertyH:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static setPropertyH(Ljava/util/Hashtable;)V
    .locals 0

    sput-object p0, Lorg/apache/xmlbeans/SystemProperties;->propertyH:Ljava/util/Hashtable;

    return-void
.end method
