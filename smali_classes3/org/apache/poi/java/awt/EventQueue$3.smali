.class Lorg/apache/poi/java/awt/EventQueue$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/EventQueue;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/EventQueue;

.field public final synthetic val$event:Lorg/apache/poi/java/awt/AWTEvent;

.field public final synthetic val$src:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/EventQueue;Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventQueue$3;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    iput-object p2, p0, Lorg/apache/poi/java/awt/EventQueue$3;->val$event:Lorg/apache/poi/java/awt/AWTEvent;

    iput-object p3, p0, Lorg/apache/poi/java/awt/EventQueue$3;->val$src:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventQueue$3;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue$3;->val$event:Lorg/apache/poi/java/awt/AWTEvent;

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue$3;->val$src:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/java/awt/EventQueue;->access$300(Lorg/apache/poi/java/awt/EventQueue;Lorg/apache/poi/java/awt/AWTEvent;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
