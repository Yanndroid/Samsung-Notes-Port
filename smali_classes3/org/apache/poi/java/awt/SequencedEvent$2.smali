.class Lorg/apache/poi/java/awt/SequencedEvent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Conditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/SequencedEvent;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/SequencedEvent;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/SequencedEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/SequencedEvent$2;->this$0:Lorg/apache/poi/java/awt/SequencedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/SequencedEvent$2;->this$0:Lorg/apache/poi/java/awt/SequencedEvent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/SequencedEvent;->isFirstOrDisposed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
