.class final Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;
.super Lorg/apache/poi/java/awt/GraphicsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/GraphicsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaintAllCallback"
.end annotation


# static fields
.field private static instance:Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;->instance:Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/GraphicsCallback;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;->instance:Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;

    return-object v0
.end method


# virtual methods
.method public run(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->paintAll(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method
