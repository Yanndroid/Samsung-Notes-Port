.class Lorg/apache/poi/sun/awt/AppContext$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/awt/AppContext$6;->hasRootThreadGroup(Lorg/apache/poi/sun/awt/AppContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/sun/awt/AppContext$6;

.field public final synthetic val$ecx:Lorg/apache/poi/sun/awt/AppContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext$6;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/AppContext$6$1;->this$0:Lorg/apache/poi/sun/awt/AppContext$6;

    iput-object p2, p0, Lorg/apache/poi/sun/awt/AppContext$6$1;->val$ecx:Lorg/apache/poi/sun/awt/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/AppContext$6$1;->val$ecx:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AppContext;->access$800(Lorg/apache/poi/sun/awt/AppContext;)Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/AppContext$6$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
