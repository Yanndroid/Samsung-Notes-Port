.class public final LcoeditOperation/CoeditOperation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/CoeditOperation$Builder;,
        LcoeditOperation/CoeditOperation$ObjectSpan;,
        LcoeditOperation/CoeditOperation$ObjectSpanOrBuilder;,
        LcoeditOperation/CoeditOperation$SetAnnotations;,
        LcoeditOperation/CoeditOperation$SetAnnotationsOrBuilder;,
        LcoeditOperation/CoeditOperation$ReplaceAttributes;,
        LcoeditOperation/CoeditOperation$ReplaceAttributesOrBuilder;,
        LcoeditOperation/CoeditOperation$UpdateAttributes;,
        LcoeditOperation/CoeditOperation$UpdateAttributesOrBuilder;,
        LcoeditOperation/CoeditOperation$KeyValueUpdate;,
        LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;,
        LcoeditOperation/CoeditOperation$KeyValuePair;,
        LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;,
        LcoeditOperation/CoeditOperation$Element;,
        LcoeditOperation/CoeditOperation$ElementOrBuilder;,
        LcoeditOperation/CoeditOperation$Elements;,
        LcoeditOperation/CoeditOperation$ElementsOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOperation/CoeditOperation;",
        "LcoeditOperation/CoeditOperation$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperationOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANGE_TYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

.field public static final DELETE_CHARACTERS_FIELD_NUMBER:I = 0x5

.field public static final DELETE_ELEMENTS_FIELD_NUMBER:I = 0x7

.field public static final DELETE_OBJECT_SPAN_FIELD_NUMBER:I = 0xc

.field public static final INDEX_FIELD_NUMBER:I = 0x2

.field public static final INSERT_CHARACTERS_FIELD_NUMBER:I = 0x4

.field public static final INSERT_ELEMENTS_FIELD_NUMBER:I = 0x6

.field public static final INSERT_OBJECT_SPAN_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPLACE_ATTRIBUTES_FIELD_NUMBER:I = 0x9

.field public static final SET_ANNOTATIONS_FIELD_NUMBER:I = 0xa

.field public static final SIZE_FIELD_NUMBER:I = 0x3

.field public static final UPDATE_ATTRIBUTES_FIELD_NUMBER:I = 0x8


# instance fields
.field private changeType_:I

.field private deleteCharacters_:Ljava/lang/String;

.field private deleteElements_:LcoeditOperation/CoeditOperation$Elements;

.field private deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

.field private index_:I

.field private insertCharacters_:Ljava/lang/String;

.field private insertElements_:LcoeditOperation/CoeditOperation$Elements;

.field private insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

.field private replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

.field private setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

.field private size_:I

.field private updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOperation/CoeditOperation;

    invoke-direct {v0}, LcoeditOperation/CoeditOperation;-><init>()V

    sput-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    const-class v1, LcoeditOperation/CoeditOperation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->insertCharacters_:Ljava/lang/String;

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->deleteCharacters_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic A(LcoeditOperation/CoeditOperation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setInsertCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic B(LcoeditOperation/CoeditOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setInsertCharactersBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic C(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setInsertElements(LcoeditOperation/CoeditOperation$Elements;)V

    return-void
.end method

.method public static bridge synthetic D(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-void
.end method

.method public static bridge synthetic E(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ReplaceAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-void
.end method

.method public static bridge synthetic F(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$SetAnnotations;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-void
.end method

.method public static bridge synthetic G(LcoeditOperation/CoeditOperation;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setSize(I)V

    return-void
.end method

.method public static bridge synthetic H(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$UpdateAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)V

    return-void
.end method

.method public static bridge synthetic I()LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    return-object v0
.end method

.method public static bridge synthetic a(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearChangeType()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearDeleteCharacters()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearDeleteElements()V

    return-void
.end method

.method private clearChangeType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditOperation/CoeditOperation;->changeType_:I

    return-void
.end method

.method private clearDeleteCharacters()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation;->getDefaultInstance()LcoeditOperation/CoeditOperation;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getDeleteCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->deleteCharacters_:Ljava/lang/String;

    return-void
.end method

.method private clearDeleteElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    return-void
.end method

.method private clearDeleteObjectSpan()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    return-void
.end method

.method private clearIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditOperation/CoeditOperation;->index_:I

    return-void
.end method

.method private clearInsertCharacters()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation;->getDefaultInstance()LcoeditOperation/CoeditOperation;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation;->getInsertCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->insertCharacters_:Ljava/lang/String;

    return-void
.end method

.method private clearInsertElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    return-void
.end method

.method private clearInsertObjectSpan()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    return-void
.end method

.method private clearReplaceAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-void
.end method

.method private clearSetAnnotations()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    return-void
.end method

.method private clearSize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditOperation/CoeditOperation;->size_:I

    return-void
.end method

.method private clearUpdateAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearDeleteObjectSpan()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearIndex()V

    return-void
.end method

.method public static bridge synthetic f(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearInsertCharacters()V

    return-void
.end method

.method public static bridge synthetic g(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearInsertElements()V

    return-void
.end method

.method public static getDefaultInstance()LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearInsertObjectSpan()V

    return-void
.end method

.method public static bridge synthetic i(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearReplaceAttributes()V

    return-void
.end method

.method public static bridge synthetic j(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearSetAnnotations()V

    return-void
.end method

.method public static bridge synthetic k(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearSize()V

    return-void
.end method

.method public static bridge synthetic l(LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation;->clearUpdateAttributes()V

    return-void
.end method

.method public static bridge synthetic m(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeDeleteElements(LcoeditOperation/CoeditOperation$Elements;)V

    return-void
.end method

.method private mergeDeleteElements(LcoeditOperation/CoeditOperation$Elements;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->getDefaultInstance()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$Elements;->newBuilder(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Elements$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Elements$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Elements;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    return-void
.end method

.method private mergeDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->getDefaultInstance()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->newBuilder(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ObjectSpan;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    return-void
.end method

.method private mergeInsertElements(LcoeditOperation/CoeditOperation$Elements;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->getDefaultInstance()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$Elements;->newBuilder(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Elements$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Elements$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Elements;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    return-void
.end method

.method private mergeInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->getDefaultInstance()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->newBuilder(LcoeditOperation/CoeditOperation$ObjectSpan;)LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ObjectSpan$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ObjectSpan;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    return-void
.end method

.method private mergeReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getDefaultInstance()LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newBuilder(LcoeditOperation/CoeditOperation$ReplaceAttributes;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-void
.end method

.method private mergeSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$SetAnnotations;->getDefaultInstance()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$SetAnnotations;->newBuilder(LcoeditOperation/CoeditOperation$SetAnnotations;)LcoeditOperation/CoeditOperation$SetAnnotations$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$SetAnnotations$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$SetAnnotations;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    return-void
.end method

.method private mergeUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getDefaultInstance()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->newBuilder(LcoeditOperation/CoeditOperation$UpdateAttributes;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$UpdateAttributes;

    :cond_0
    iput-object p1, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-void
.end method

.method public static bridge synthetic n(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-void
.end method

.method public static newBuilder()LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOperation/CoeditOperation;)LcoeditOperation/CoeditOperation$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Builder;

    return-object p0
.end method

.method public static bridge synthetic o(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeInsertElements(LcoeditOperation/CoeditOperation$Elements;)V

    return-void
.end method

.method public static bridge synthetic p(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-void
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic q(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ReplaceAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V

    return-void
.end method

.method public static bridge synthetic r(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$SetAnnotations;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)V

    return-void
.end method

.method public static bridge synthetic s(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$UpdateAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->mergeUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)V

    return-void
.end method

.method private setChangeType(LcoeditOperation/ChangeType;)V
    .locals 0

    invoke-virtual {p1}, LcoeditOperation/ChangeType;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditOperation/CoeditOperation;->changeType_:I

    return-void
.end method

.method private setChangeTypeValue(I)V
    .locals 0

    iput p1, p0, LcoeditOperation/CoeditOperation;->changeType_:I

    return-void
.end method

.method private setDeleteCharacters(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->deleteCharacters_:Ljava/lang/String;

    return-void
.end method

.method private setDeleteCharactersBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->deleteCharacters_:Ljava/lang/String;

    return-void
.end method

.method private setDeleteElements(LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    return-void
.end method

.method private setDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    return-void
.end method

.method private setIndex(I)V
    .locals 0

    iput p1, p0, LcoeditOperation/CoeditOperation;->index_:I

    return-void
.end method

.method private setInsertCharacters(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->insertCharacters_:Ljava/lang/String;

    return-void
.end method

.method private setInsertCharactersBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->insertCharacters_:Ljava/lang/String;

    return-void
.end method

.method private setInsertElements(LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    return-void
.end method

.method private setInsertObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    return-void
.end method

.method private setReplaceAttributes(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-void
.end method

.method private setSetAnnotations(LcoeditOperation/CoeditOperation$SetAnnotations;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    return-void
.end method

.method private setSize(I)V
    .locals 0

    iput p1, p0, LcoeditOperation/CoeditOperation;->size_:I

    return-void
.end method

.method private setUpdateAttributes(LcoeditOperation/CoeditOperation$UpdateAttributes;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-void
.end method

.method public static bridge synthetic t(LcoeditOperation/CoeditOperation;LcoeditOperation/ChangeType;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setChangeType(LcoeditOperation/ChangeType;)V

    return-void
.end method

.method public static bridge synthetic u(LcoeditOperation/CoeditOperation;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setChangeTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic v(LcoeditOperation/CoeditOperation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setDeleteCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic w(LcoeditOperation/CoeditOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setDeleteCharactersBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic x(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setDeleteElements(LcoeditOperation/CoeditOperation$Elements;)V

    return-void
.end method

.method public static bridge synthetic y(LcoeditOperation/CoeditOperation;LcoeditOperation/CoeditOperation$ObjectSpan;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setDeleteObjectSpan(LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-void
.end method

.method public static bridge synthetic z(LcoeditOperation/CoeditOperation;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOperation/CoeditOperation$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, LcoeditOperation/CoeditOperation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOperation/CoeditOperation;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOperation/CoeditOperation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOperation/CoeditOperation;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "changeType_"

    aput-object v0, p1, p3

    const-string p3, "index_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "size_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "insertCharacters_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "deleteCharacters_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "insertElements_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "deleteElements_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "updateAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "replaceAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "setAnnotations_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "insertObjectSpan_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "deleteObjectSpan_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0000\u0000\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u000c\u0002\u0004\u0003\u0004\u0004\u0208\u0005\u0208\u0006\t\u0007\t\u0008\t\t\t\n\t\u000b\t\u000c\t"

    sget-object p3, LcoeditOperation/CoeditOperation;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOperation/CoeditOperation$Builder;

    invoke-direct {p1, p3}, LcoeditOperation/CoeditOperation$Builder;-><init>(LcoeditOperation/b;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOperation/CoeditOperation;

    invoke-direct {p1}, LcoeditOperation/CoeditOperation;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChangeType()LcoeditOperation/ChangeType;
    .locals 1

    iget v0, p0, LcoeditOperation/CoeditOperation;->changeType_:I

    invoke-static {v0}, LcoeditOperation/ChangeType;->forNumber(I)LcoeditOperation/ChangeType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditOperation/ChangeType;->UNRECOGNIZED:LcoeditOperation/ChangeType;

    :cond_0
    return-object v0
.end method

.method public getChangeTypeValue()I
    .locals 1

    iget v0, p0, LcoeditOperation/CoeditOperation;->changeType_:I

    return v0
.end method

.method public getDeleteCharacters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteCharacters_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteCharactersBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteCharacters_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteElements()LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->getDefaultInstance()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeleteObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->getDefaultInstance()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, LcoeditOperation/CoeditOperation;->index_:I

    return v0
.end method

.method public getInsertCharacters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertCharacters_:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertCharactersBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertCharacters_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInsertElements()LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$Elements;->getDefaultInstance()LcoeditOperation/CoeditOperation$Elements;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInsertObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->getDefaultInstance()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReplaceAttributes()LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->getDefaultInstance()LcoeditOperation/CoeditOperation$ReplaceAttributes;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSetAnnotations()LcoeditOperation/CoeditOperation$SetAnnotations;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$SetAnnotations;->getDefaultInstance()LcoeditOperation/CoeditOperation$SetAnnotations;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, LcoeditOperation/CoeditOperation;->size_:I

    return v0
.end method

.method public getUpdateAttributes()LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CoeditOperation$UpdateAttributes;->getDefaultInstance()LcoeditOperation/CoeditOperation$UpdateAttributes;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasDeleteElements()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteElements_:LcoeditOperation/CoeditOperation$Elements;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeleteObjectSpan()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->deleteObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInsertElements()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertElements_:LcoeditOperation/CoeditOperation$Elements;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInsertObjectSpan()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->insertObjectSpan_:LcoeditOperation/CoeditOperation$ObjectSpan;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReplaceAttributes()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->replaceAttributes_:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetAnnotations()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->setAnnotations_:LcoeditOperation/CoeditOperation$SetAnnotations;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateAttributes()Z
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation;->updateAttributes_:LcoeditOperation/CoeditOperation$UpdateAttributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
