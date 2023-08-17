.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProtoBufUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(LcoeditOperation/CoeditOperation$ObjectSpan;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditOperation/CoeditOperation$ObjectSpan;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$ObjectSpan;->getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object p0

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Ljava/util/List;)LcoeditOperation/CoeditOperation$Elements;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)",
            "LcoeditOperation/CoeditOperation$Elements;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->newBuilder()LcoeditOperation/CoeditOperation$Elements$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getAttributeKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValuePair;->newBuilder()LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->isEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, LcoeditOperation/CoeditOperation$Element;->newBuilder()LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LcoeditOperation/CoeditOperation$Element$Builder;->setTagName(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, LcoeditOperation/CoeditOperation$Element$Builder;->addAllAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, LcoeditOperation/CoeditOperation$Element;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LcoeditOperation/CoeditOperation$Element;->newBuilder()LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->isEnd()Z

    move-result v4

    invoke-virtual {v3, v4}, LcoeditOperation/CoeditOperation$Element$Builder;->setElementEnd(Z)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, LcoeditOperation/CoeditOperation$Element$Builder;->setTagName(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, LcoeditOperation/CoeditOperation$Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    invoke-static {}, LcoeditOperation/CoeditOperation$Element;->newBuilder()LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->isEnd()Z

    move-result v5

    invoke-virtual {v4, v5}, LcoeditOperation/CoeditOperation$Element$Builder;->setElementEnd(Z)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LcoeditOperation/CoeditOperation$Element$Builder;->setTagName(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, LcoeditOperation/CoeditOperation$Element$Builder;->addAllAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$Element$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, LcoeditOperation/CoeditOperation$Element;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->isEnd()Z

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->newBuilder()LcoeditOperation/CoeditOperation$Elements$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, LcoeditOperation/CoeditOperation$Elements$Builder;->addAllElement(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$Elements$Builder;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static convert(Landroid/util/Pair;)LcoeditOperation/CoeditOperation$ObjectSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "LcoeditOperation/CoeditOperation$ObjectSpan;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->newBuilder()LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ObjectSpan;

    return-object p0

    :cond_0
    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->newBuilder()LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValuePair;->newBuilder()LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$ObjectSpan$Builder;->setObjectSpan(LcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method private static convert(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 8

    if-nez p0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newBuilder()LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getAttributeKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getOldAttributes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getNewAttributes()Ljava/util/List;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValuePair;->newBuilder()LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValuePair;->newBuilder()LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;->setValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newBuilder()LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;->addAllOldAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;->addAllNewAttribute(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method private static convert(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;)LcoeditOperation/CoeditOperation$SetAnnotations;
    .locals 6

    if-nez p0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$SetAnnotations;->newBuilder()LcoeditOperation/CoeditOperation$SetAnnotations$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$SetAnnotations;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->getOldAnnotation()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->getNewAnnotation()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newBuilder()LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;->setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;->setOldValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;->setNewValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, LcoeditOperation/CoeditOperation$SetAnnotations;->newBuilder()LcoeditOperation/CoeditOperation$SetAnnotations$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->getEndIndex()I

    move-result p0

    invoke-virtual {v1, p0}, LcoeditOperation/CoeditOperation$SetAnnotations$Builder;->setEndIndex(I)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, LcoeditOperation/CoeditOperation$SetAnnotations$Builder;->addAllAnnotation(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method private static convert(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 7

    if-nez p0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$UpdateAttributes;->newBuilder()LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getAttributeKeys()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getOldAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->getNewAttributes()Ljava/util/List;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newBuilder()LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;->setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;->setOldValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;->setNewValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, LcoeditOperation/CoeditOperation$UpdateAttributes;->newBuilder()LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;->addAllChange(Ljava/lang/Iterable;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method private static convert(LcoeditOperation/CoeditOperation$ReplaceAttributes;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getOldAttributeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->setOldAttributes(Ljava/util/List;)V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getNewAttributeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Key is not matched"

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->setNewAttributes(Ljava/util/List;)V

    return-object v0
.end method

.method private static convert(LcoeditOperation/CoeditOperation$SetAnnotations;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getEndIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->setEndIndex(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getAnnotationList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v3}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->setOldAnnotation(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->setNewAnnotation(Ljava/util/Map;)V

    return-object v0
.end method

.method private static convert(LcoeditOperation/CoeditOperation$UpdateAttributes;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChangeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->setAttributeKeys(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->setOldAttributes(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->setNewAttributes(Ljava/util/List;)V

    return-object v0
.end method

.method private static convert(LcoeditOperation/CoeditOperation$Elements;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditOperation/CoeditOperation$Elements;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation$Elements;->getElementList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcoeditOperation/CoeditOperation$Element;

    new-instance v2, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;-><init>()V

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getAttributeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getElementEnd()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;->setEnd(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static convertType(LcoeditOperation/ChangeType;)I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpType;
    .end annotation

    sget-object v0, LcoeditOperation/ChangeType;->INSERT_CHARACTERS:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, LcoeditOperation/ChangeType;->DELETE_CHARACTERS:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, LcoeditOperation/ChangeType;->INSERT_ELEMENTS:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    sget-object v0, LcoeditOperation/ChangeType;->DELETE_ELEMENTS:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    sget-object v0, LcoeditOperation/ChangeType;->UPDATE_ATTRIBUTES:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    sget-object v0, LcoeditOperation/ChangeType;->REPLACE_ATTRIBUTES:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_5

    const/4 p0, 0x5

    goto :goto_0

    :cond_5
    sget-object v0, LcoeditOperation/ChangeType;->SET_ANNOTATIONS:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x6

    goto :goto_0

    :cond_6
    sget-object v0, LcoeditOperation/ChangeType;->INSERT_OBJECT_SPAN:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_7

    const/4 p0, 0x7

    goto :goto_0

    :cond_7
    sget-object v0, LcoeditOperation/ChangeType;->DELETE_OBJECT_SPAN:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_8

    const/16 p0, 0x8

    goto :goto_0

    :cond_8
    sget-object v0, LcoeditOperation/ChangeType;->RETAIN:LcoeditOperation/ChangeType;

    if-ne p0, v0, :cond_9

    const/16 p0, 0x9

    goto :goto_0

    :cond_9
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static convertType(I)LcoeditOperation/ChangeType;
    .locals 1
    .param p0    # I
        .annotation build Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpType;
        .end annotation
    .end param

    sget-object v0, LcoeditOperation/ChangeType;->UNRECOGNIZED:LcoeditOperation/ChangeType;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, LcoeditOperation/ChangeType;->RETAIN:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_1
    sget-object v0, LcoeditOperation/ChangeType;->DELETE_OBJECT_SPAN:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_2
    sget-object v0, LcoeditOperation/ChangeType;->INSERT_OBJECT_SPAN:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_3
    sget-object v0, LcoeditOperation/ChangeType;->SET_ANNOTATIONS:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_4
    sget-object v0, LcoeditOperation/ChangeType;->REPLACE_ATTRIBUTES:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_5
    sget-object v0, LcoeditOperation/ChangeType;->UPDATE_ATTRIBUTES:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_6
    sget-object v0, LcoeditOperation/ChangeType;->DELETE_ELEMENTS:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_7
    sget-object v0, LcoeditOperation/ChangeType;->INSERT_ELEMENTS:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_8
    sget-object v0, LcoeditOperation/ChangeType;->DELETE_CHARACTERS:LcoeditOperation/ChangeType;

    goto :goto_0

    :pswitch_9
    sget-object v0, LcoeditOperation/ChangeType;->INSERT_CHARACTERS:LcoeditOperation/ChangeType;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static deserialize(LcoeditOperation/CoeditOperation;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;-><init>()V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(LcoeditOperation/ChangeType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setType(I)V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setPos(I)V

    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setSize(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string p0, "ProtoBufUtils"

    const-string v1, "Unsupported type"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getDeleteObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$ObjectSpan;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setDeleteObjectSpan(Landroid/util/Pair;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getInsertObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$ObjectSpan;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setInsertObjectSpan(Landroid/util/Pair;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$SetAnnotations;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setSetAnnotations(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getReplaceAttributes()LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$ReplaceAttributes;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setReplaceAttributes(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$UpdateAttributes;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setUpdateAttributes(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getDeleteElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$Elements;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setDeleteElements(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElements()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getInsertElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$Elements;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setInsertElements(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElements()Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->getXmlString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getDeleteCharacters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setDeleteCharacters(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteCharacters()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, LcoeditOperation/CoeditOperation;->getInsertCharacters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setInsertCharacters(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertCharacters()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setXmlData(Ljava/lang/String;)V

    :goto_2
    :pswitch_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static deserialize(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->getCoeditOpsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcoeditOperation/CoeditOperation;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v4

    sget-object v5, LcoeditOperation/ChangeType;->INSERT_ELEMENTS:LcoeditOperation/ChangeType;

    if-ne v4, v5, :cond_2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserializeInsertElement(Ljava/util/List;I)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    move-result-object v3

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v4

    sget-object v5, LcoeditOperation/ChangeType;->DELETE_ELEMENTS:LcoeditOperation/ChangeType;

    if-ne v4, v5, :cond_3

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserializeDeleteElement(Ljava/util/List;I)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(LcoeditOperation/CoeditOperation;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static deserializeDeleteElement(Ljava/util/List;I)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;I)",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->getNextDeletePageIndex(Ljava/util/List;I)I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "ProtoBufUtils"

    const/4 v3, 0x1

    if-gt v1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(LcoeditOperation/CoeditOperation;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcoeditOperation/CoeditOperation;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(LcoeditOperation/CoeditOperation;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deserializeDeleteElement. DELETE_ELEMENTS Find Page, need to merge Page, pos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " posEnd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v0, v3

    :goto_0
    if-gt p1, v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LcoeditOperation/CoeditOperation;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v6

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v6

    if-ge v6, v4, :cond_1

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation;->getDeleteElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$Elements;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->addAllDeleteElements(ILjava/util/List;)V

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setSize(I)V

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deserializeDeleteElement. noteOp deleteElements size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElementsSize()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElementsSize()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElementName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElementName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->isDeleteElementEnd(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->isDeleteElementEnd(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setDeleteElementEnd(IZ)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->removeDeleteElement(I)V

    :cond_3
    move p1, v4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElementsSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->getXmlString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setXmlData(Ljava/lang/String;)V

    return-object p0
.end method

.method private static deserializeInsertElement(Ljava/util/List;I)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;I)",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(LcoeditOperation/CoeditOperation;)Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deserializeInsertElement. targetIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", INSERT_ELEMENTS pos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", posEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProtoBufUtils"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    add-int/2addr p1, v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v5

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v5

    if-ge v5, v1, :cond_0

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation;->getInsertElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(LcoeditOperation/CoeditOperation$Elements;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->addAllInsertElements(ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deserializeInsertElement. noteOp insertElements size : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElementsSize()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElementsSize()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p0, v1, :cond_3

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElementName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, p0, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElementName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->isInsertElementEnd(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->isInsertElementEnd(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setInsertElementEnd(IZ)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->removeInsertElement(I)V

    :cond_2
    move p0, v4

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElementsSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->getXmlString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->setXmlData(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCoeditOpsList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LcoeditOperation/ChangeType;->UNRECOGNIZED:LcoeditOperation/ChangeType;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcoeditOperation/CoeditOperation;

    sget-object v5, LcoeditOperation/ChangeType;->UNRECOGNIZED:LcoeditOperation/ChangeType;

    if-eq v1, v5, :cond_0

    invoke-virtual {v4}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v5

    if-eq v1, v5, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    :cond_1
    invoke-virtual {v4}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v1

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private static getNextDeletePageIndex(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;I)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "ProtoBufUtils"

    if-ge p1, v1, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcoeditOperation/CoeditOperation;

    if-lez p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcoeditOperation/CoeditOperation;

    invoke-virtual {v3}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v3

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextDeletePageIndex. Can not Find Page index: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v1}, LcoeditOperation/CoeditOperation;->getDeleteElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LcoeditOperation/CoeditOperation$Elements;->getElement(I)LcoeditOperation/CoeditOperation$Element;

    move-result-object v1

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "page"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNextDeletePageIndex. Find Page index: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "getNextDeletePageIndex. Can not Find Page index"

    goto :goto_1
.end method

.method public static serialize(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string p0, "ProtoBufUtils"

    const-string v0, "Unsupported type"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeRetainOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeDeleteObjectSpanOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeInsertObjectSpanOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeSetAnnotationOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeReplaceAttributeOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeUpdateAttributeOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeDeleteElementsOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeInsertElementsOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeDeleteCharacterOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serializeInsertCharacterOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serialize(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->serialize(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static serializeDeleteCharacterOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteCharacters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setDeleteCharacters(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeDeleteElementsOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Ljava/util/List;)LcoeditOperation/CoeditOperation$Elements;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setDeleteElements(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeDeleteObjectSpanOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getDeleteObjectSpan()Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Landroid/util/Pair;)LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeInsertCharacterOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertCharacters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setInsertCharacters(Ljava/lang/String;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeInsertElementsOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Ljava/util/List;)LcoeditOperation/CoeditOperation$Elements;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setInsertElements(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeInsertObjectSpanOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getInsertObjectSpan()Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Landroid/util/Pair;)LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeReplaceAttributeOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getReplaceAttributes()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpReplaceAttributes;)LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeRetainOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeSetAnnotationOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSetAnnotations()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;)LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method private static serializeUpdateAttributeOp(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;)LcoeditOperation/CoeditOperation;
    .locals 2

    invoke-static {}, LcoeditOperation/CoeditOperation;->newBuilder()LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convertType(I)LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setChangeType(LcoeditOperation/ChangeType;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setIndex(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, LcoeditOperation/CoeditOperation$Builder;->setSize(I)LcoeditOperation/CoeditOperation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;->getUpdateAttributes()Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->convert(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpUpdateAttributes;)LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object p0

    invoke-virtual {v0, p0}, LcoeditOperation/CoeditOperation$Builder;->setUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)LcoeditOperation/CoeditOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method
