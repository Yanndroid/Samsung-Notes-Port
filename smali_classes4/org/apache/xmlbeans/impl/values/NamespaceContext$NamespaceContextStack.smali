.class final Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/values/NamespaceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamespaceContextStack"
.end annotation


# instance fields
.field public current:Lorg/apache/xmlbeans/impl/values/NamespaceContext;

.field public stack:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->stack:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/NamespaceContext$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;-><init>()V

    return-void
.end method


# virtual methods
.method public final pop()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->current:Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->current:Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->current:Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    return-void
.end method
