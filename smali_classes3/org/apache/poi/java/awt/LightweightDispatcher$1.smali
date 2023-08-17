.class Lorg/apache/poi/java/awt/LightweightDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/LightweightDispatcher;->startListeningForOtherDrags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/LightweightDispatcher;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$1;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$1;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    invoke-static {v0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->access$000(Lorg/apache/poi/java/awt/LightweightDispatcher;)Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$1;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    const-wide/16 v2, 0x30

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->addAWTEventListener(Lorg/apache/poi/java/awt/event/AWTEventListener;J)V

    const/4 v0, 0x0

    return-object v0
.end method
