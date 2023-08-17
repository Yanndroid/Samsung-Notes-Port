.class Lorg/apache/poi/java/awt/Component$FlipSubRegionBufferStrategy;
.super Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/SubRegionShowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlipSubRegionBufferStrategy"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$FlipSubRegionBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/BufferCapabilities;)V

    return-void
.end method


# virtual methods
.method public show(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->showSubRegion(IIII)V

    return-void
.end method

.method public showIfNotLost(IIII)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->contentsLost()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->showSubRegion(IIII)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->contentsLost()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
