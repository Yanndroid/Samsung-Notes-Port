.class Lorg/apache/poi/java/awt/EventDispatchThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Conditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/EventDispatchThread;->_macosxGetConditional(Ljava/lang/Object;)Lorg/apache/poi/java/awt/Conditional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final evaluateMethod:Ljava/lang/reflect/Method;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/EventDispatchThread;

.field public final synthetic val$cond:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/EventDispatchThread;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventDispatchThread$2;->this$0:Lorg/apache/poi/java/awt/EventDispatchThread;

    iput-object p2, p0, Lorg/apache/poi/java/awt/EventDispatchThread$2;->val$cond:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "sun.lwawt.macosx.EventDispatchAccess"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "evaluate"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventDispatchThread$2;->evaluateMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread$2;->evaluateMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/poi/java/awt/EventDispatchThread$2;->val$cond:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
