.class Lorg/apache/poi/java/awt/Dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Conditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Dialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Dialog;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog$1;->this$0:Lorg/apache/poi/java/awt/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Dialog$1;->this$0:Lorg/apache/poi/java/awt/Dialog;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
