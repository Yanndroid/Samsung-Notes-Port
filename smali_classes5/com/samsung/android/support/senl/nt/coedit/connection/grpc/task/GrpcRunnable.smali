.class public abstract Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;
    }
.end annotation


# static fields
.field public static final INFINITE_LOOP_SLEEP_DELAY:J = 0xaL


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

.field private mIsInterrupted:Z

.field private mResultCode:I

.field private mRetryCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mRetryCount:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mIsInterrupted:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    return-void
.end method

.method private printDeleteCharacters(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 1

    const-string v0, "# DELETE_CHARACTERS# operationIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], characters :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getDeleteCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printDeleteElements(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 7

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v1

    const-string v2, "# DELETE_ELEMENTS# operationIndex :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], elementCount :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getDeleteElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Elements;->getElementCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getDeleteElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation$Elements;->getElementList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcoeditOperation/CoeditOperation$Element;

    const-string v2, ", {TagData# tagName :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isEndTag :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getElementEnd()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "}]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getAttributeCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, ", {AttributeData# attributeCount :["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    const-string v4, "}"

    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, LcoeditOperation/CoeditOperation$Element;->getAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object v5

    const-string v6, "  { attribute("

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), key : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / value : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private printDeleteObjectSpan(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 1

    const-string v0, "# DELETE_OBJECT_SPAN# operationIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " { key : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getDeleteObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / value : ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getDeleteObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation$ObjectSpan;->getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printInsertCharacters(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 1

    const-string v0, "# INSERT_CHARACTERS# operationIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], characters :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getInsertCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printInsertElements(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 7

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v1

    const-string v2, "# INSERT_ELEMENTS# operationIndex :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], elementCount :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getInsertElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$Elements;->getElementCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getInsertElements()LcoeditOperation/CoeditOperation$Elements;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation$Elements;->getElementList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcoeditOperation/CoeditOperation$Element;

    const-string v2, ", {TagData# tagName :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isEndTag :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getElementEnd()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "}]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$Element;->getAttributeCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, ", {AttributeData# attributeCount :["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    const-string v4, "}"

    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, LcoeditOperation/CoeditOperation$Element;->getAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object v5

    const-string v6, "  { attribute("

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), key : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / value : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private printInsertObjectSpan(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 1

    const-string v0, "# INSERT_OBJECT_SPAN# operationIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " { key : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getInsertObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / value : ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getInsertObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation$ObjectSpan;->getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printReplaceAttributes(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 1

    const-string v0, "# REPLACE_ATTRIBUTES# operationIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], newAttributeCount :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getReplaceAttributes()LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getNewAttributeCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printRetains(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 1

    const-string v0, "# RETAIN# operationIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printSetAnnotations(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 4

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v1

    const-string v2, "# SET_ANNOTATIONS# operationIndex :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], endIndex :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getEndIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v1

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$SetAnnotations;->getAnnotationCount()I

    move-result v1

    if-lez v1, :cond_1

    const-string v2, " {AttributeData# setAnnotationCount :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v2

    invoke-virtual {v2, v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->getAnnotation(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object v2

    const-string v3, "  { attribute("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), key : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / old value : ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -> new value : ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private printUpdateAttributes(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V
    .locals 4

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getIndex()I

    move-result v0

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getSize()I

    move-result v1

    const-string v2, "# UPDATE_ATTRIBUTES# operationIndex :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], changeCount :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChangeCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], size :["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v1

    invoke-virtual {v1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChangeCount()I

    move-result v1

    if-lez v1, :cond_1

    const-string v2, " {AttributeData# updateAttributeCount :["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v2

    invoke-virtual {v2, v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getChange(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object v2

    const-string v3, "  { attribute("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), key : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / old value : ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -> new value : ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public getResponseResultLog(LcoeditCoreMessage/ResponseResult;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(coeditCore):: ResultCode: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ", Lmsg: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ", Rmsg: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ", RequestId: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ResponseResult;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseResultLog(LcoeditObjectMessage/ResponseResult;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(coeditObject):: ResultCode: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditObjectMessage/ResponseResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditObjectMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ", Lmsg: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditObjectMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, LcoeditObjectMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ", Rmsg: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditObjectMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseResultLog(LnoteSnapMessage/ResponseResult;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(noteSnap):: ResultCode: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/ResponseResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ", Lmsg: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, LnoteSnapMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ", Rmsg: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnoteSnapMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mResultCode:I

    return v0
.end method

.method public getRetryCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mRetryCount:I

    return v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public increaseRetryCount()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mRetryCount:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized interrupt()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mIsInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;->isClosing()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isInterrupt()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mIsInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public printCancellationCause()V
    .locals 4

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancellationCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public printCheckPointOperationPair(Ljava/lang/String;LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperationCount()I

    move-result v0

    const-string v1, "]"

    if-lez v0, :cond_1

    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCheckpoint()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "# CoeditOperations# checkPoint :["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LcoeditOperation/CoeditOperation;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCoeditOperation(Ljava/lang/String;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfoCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LcoeditCoreMessage/ObjectInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "# ObjectInfo# objectId :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditCoreMessage/ObjectInfo;->hasBinaryInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v2

    const-string v4, ", {BinaryInfo: hash :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditCoreMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], mimeType :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditCoreMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], size :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LcoeditCoreMessage/BinaryInfo;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDeviceInfo()LcoeditCoreMessage/DeviceInfo;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "# DeviceInfo# dvcId :["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], uid :["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], deviceInfoChangeType :["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditCoreMessage/DeviceInfo;->getDeviceInfoChangeType()LcoeditCoreMessage/DeviceInfoChangeType;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public printCoeditOperation(Ljava/lang/String;LcoeditOperation/CoeditOperation;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$1;->$SwitchMap$coeditOperation$ChangeType:[I

    invoke-virtual {p2}, LcoeditOperation/CoeditOperation;->getChangeType()LcoeditOperation/ChangeType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printRetains(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printDeleteObjectSpan(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printInsertObjectSpan(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printSetAnnotations(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printDeleteCharacters(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printInsertCharacters(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printReplaceAttributes(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printUpdateAttributes(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printDeleteElements(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printInsertElements(Ljava/lang/StringBuilder;LcoeditOperation/CoeditOperation;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public printIdxCedOpsPair(Ljava/lang/String;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", idxCedOpsPair Idx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOtMessage/IdxCedOpsPair;->getIdx()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v2

    invoke-virtual {v2}, LcoeditOperation/CedOps;->getCoeditOperationCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object p2

    invoke-virtual {p2}, LcoeditOperation/CedOps;->getCoeditOperationList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCoeditOperation(Ljava/lang/String;LcoeditOperation/CoeditOperation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    sget-object v0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mResultCode:I

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mResultCode:I

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->mContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;->showToast(Ljava/lang/String;)V

    return-void
.end method
