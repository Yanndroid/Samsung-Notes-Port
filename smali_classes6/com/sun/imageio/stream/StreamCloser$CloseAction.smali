.class public final Lcom/sun/imageio/stream/StreamCloser$CloseAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/stream/StreamCloser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseAction"
.end annotation


# instance fields
.field private iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# direct methods
.method private constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/stream/StreamCloser$CloseAction;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/stream/StreamCloser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/stream/StreamCloser$CloseAction;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V

    return-void
.end method


# virtual methods
.method public performAction()V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/stream/StreamCloser$CloseAction;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    :cond_0
    return-void
.end method
