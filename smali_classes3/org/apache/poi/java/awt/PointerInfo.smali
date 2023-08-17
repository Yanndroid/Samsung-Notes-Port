.class public Lorg/apache/poi/java/awt/PointerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private device:Lorg/apache/poi/java/awt/GraphicsDevice;

.field private location:Lorg/apache/poi/java/awt/Point;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/GraphicsDevice;Lorg/apache/poi/java/awt/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/PointerInfo;->device:Lorg/apache/poi/java/awt/GraphicsDevice;

    iput-object p2, p0, Lorg/apache/poi/java/awt/PointerInfo;->location:Lorg/apache/poi/java/awt/Point;

    return-void
.end method


# virtual methods
.method public getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PointerInfo;->device:Lorg/apache/poi/java/awt/GraphicsDevice;

    return-object v0
.end method

.method public getLocation()Lorg/apache/poi/java/awt/Point;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PointerInfo;->location:Lorg/apache/poi/java/awt/Point;

    return-object v0
.end method
