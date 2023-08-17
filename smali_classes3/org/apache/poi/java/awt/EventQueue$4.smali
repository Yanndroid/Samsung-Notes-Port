.class Lorg/apache/poi/java/awt/EventQueue$4;
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

.field public final synthetic val$action:Ljava/security/PrivilegedAction;

.field public final synthetic val$eventAcc:Ljava/security/AccessControlContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/EventQueue;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventQueue$4;->this$0:Lorg/apache/poi/java/awt/EventQueue;

    iput-object p2, p0, Lorg/apache/poi/java/awt/EventQueue$4;->val$action:Ljava/security/PrivilegedAction;

    iput-object p3, p0, Lorg/apache/poi/java/awt/EventQueue$4;->val$eventAcc:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/EventQueue$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->access$400()Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventQueue$4;->val$action:Ljava/security/PrivilegedAction;

    iget-object v2, p0, Lorg/apache/poi/java/awt/EventQueue$4;->val$eventAcc:Ljava/security/AccessControlContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/sun/misc/JavaSecurityAccess;->doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
