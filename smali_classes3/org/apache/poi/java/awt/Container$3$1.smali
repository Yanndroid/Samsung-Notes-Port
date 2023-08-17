.class Lorg/apache/poi/java/awt/Container$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Conditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Container$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/apache/poi/java/awt/Container$3;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Container$3;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container$3$1;->this$1:Lorg/apache/poi/java/awt/Container$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$3$1;->this$1:Lorg/apache/poi/java/awt/Container$3;

    iget-object v1, v0, Lorg/apache/poi/java/awt/Container$3;->this$0:Lorg/apache/poi/java/awt/Container;

    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/java/awt/Container$3;->val$nativeContainer:Lorg/apache/poi/java/awt/Container;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
