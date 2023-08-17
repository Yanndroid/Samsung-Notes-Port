.class final Lorg/apache/poi/java/awt/KeyboardFocusManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/KeyboardFocusManager;->retargetFocusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)Lorg/apache/poi/java/awt/event/FocusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->processCurrentLightweightRequests()V

    return-void
.end method
