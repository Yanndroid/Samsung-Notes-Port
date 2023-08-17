.class Lorg/apache/poi/java/awt/Component$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Component;->doSwingSerialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;

.field public final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$5;->this$0:Lorg/apache/poi/java/awt/Component;

    iput-object p2, p0, Lorg/apache/poi/java/awt/Component$5;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$5;->val$method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x0

    return-object v0
.end method
