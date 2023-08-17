.class public abstract Lorg/apache/poi/util/POILogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x7

.field public static final FATAL:I = 0x9

.field public static final INFO:I = 0x3

.field public static final LEVEL_STRINGS:[Ljava/lang/String;

.field public static final LEVEL_STRINGS_SHORT:[Ljava/lang/String;

.field public static final WARN:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "?"

    const-string v1, "D"

    const-string v2, "?"

    const-string v3, "I"

    const-string v4, "?"

    const-string v5, "W"

    const-string v6, "?"

    const-string v7, "E"

    const-string v8, "?"

    const-string v9, "F"

    const-string v10, "?"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS_SHORT:[Ljava/lang/String;

    const-string v1, "?0?"

    const-string v2, "DEBUG"

    const-string v3, "?2?"

    const-string v4, "INFO"

    const-string v5, "?4?"

    const-string v6, "WARN"

    const-string v7, "?6?"

    const-string v8, "ERROR"

    const-string v9, "?8?"

    const-string v10, "FATAL"

    const-string v11, "?10+?"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract _log(ILjava/lang/Object;)V
.end method

.method public abstract _log(ILjava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract check(I)Z
.end method

.method public abstract initialize(Ljava/lang/String;)V
.end method

.method public varargs log(I[Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    aget-object v3, p2, v2

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[\r\n]+"

    const-string v2, " "

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/POILogger;->_log(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/poi/util/POILogger;->_log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
