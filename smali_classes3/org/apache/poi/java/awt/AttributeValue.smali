.class abstract Lorg/apache/poi/java/awt/AttributeValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;


# instance fields
.field private final names:[Ljava/lang/String;

.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.java.awt.AttributeValue"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/AttributeValue;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/java/awt/AttributeValue;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", names = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lt p1, v1, :cond_2

    :cond_1
    const-string v1, "Assertion failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_2
    iput p1, p0, Lorg/apache/poi/java/awt/AttributeValue;->value:I

    iput-object p2, p0, Lorg/apache/poi/java/awt/AttributeValue;->names:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AttributeValue;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/AttributeValue;->names:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/java/awt/AttributeValue;->value:I

    aget-object v0, v0, v1

    return-object v0
.end method
