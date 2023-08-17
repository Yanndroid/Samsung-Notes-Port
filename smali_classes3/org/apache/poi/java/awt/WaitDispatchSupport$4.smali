.class Lorg/apache/poi/java/awt/WaitDispatchSupport$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/WaitDispatchSupport;->enter()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

.field public final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/WaitDispatchSupport;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$4;->this$0:Lorg/apache/poi/java/awt/WaitDispatchSupport;

    iput-object p2, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$4;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/WaitDispatchSupport$4;->val$run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
