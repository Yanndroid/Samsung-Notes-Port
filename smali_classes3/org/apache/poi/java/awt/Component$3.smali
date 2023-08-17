.class Lorg/apache/poi/java/awt/Component$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Component;->checkCoalescing()Z
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
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;

.field public final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$3;->this$0:Lorg/apache/poi/java/awt/Component;

    iput-object p2, p0, Lorg/apache/poi/java/awt/Component$3;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$3;->val$clazz:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/poi/java/awt/Component;->access$500(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$3;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
