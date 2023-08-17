.class Lorg/apache/poi/java/awt/Dialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Dialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lorg/apache/poi/java/awt/EventQueue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Dialog;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog$3;->this$0:Lorg/apache/poi/java/awt/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Dialog$3;->run()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/apache/poi/java/awt/EventQueue;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getSystemEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    return-object v0
.end method
