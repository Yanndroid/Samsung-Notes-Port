.class Lorg/jsoup/nodes/Node$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Node;->setBaseUri(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/jsoup/nodes/Node;

.field public final synthetic val$baseUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Node$1;->this$0:Lorg/jsoup/nodes/Node;

    iput-object p2, p0, Lorg/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    iget-object p2, p0, Lorg/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    iput-object p2, p1, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    return-void
.end method
