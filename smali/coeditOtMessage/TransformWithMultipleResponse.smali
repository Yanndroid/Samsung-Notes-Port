.class public final LcoeditOtMessage/TransformWithMultipleResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/TransformWithMultipleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOtMessage/TransformWithMultipleResponse;",
        "LcoeditOtMessage/TransformWithMultipleResponse$Builder;",
        ">;",
        "LcoeditOtMessage/TransformWithMultipleResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

.field public static final FIRST_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/TransformWithMultipleResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECOND_FIELD_NUMBER:I = 0x2


# instance fields
.field private first_:LcoeditOtMessage/IdxCedOpsPair;

.field private second_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-direct {v0}, LcoeditOtMessage/TransformWithMultipleResponse;-><init>()V

    sput-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    const-class v1, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOtMessage/TransformWithMultipleResponse;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->addAllSecond(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllSecond(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->ensureSecondIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addSecond(ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->ensureSecondIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSecond(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->ensureSecondIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOtMessage/TransformWithMultipleResponse;ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/TransformWithMultipleResponse;->addSecond(ILcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->addSecond(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private clearFirst()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method private clearSecond()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOtMessage/TransformWithMultipleResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->clearFirst()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOtMessage/TransformWithMultipleResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->clearSecond()V

    return-void
.end method

.method private ensureSecondIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->mergeFirst(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditOtMessage/TransformWithMultipleResponse;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->removeSecond(I)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditOtMessage/TransformWithMultipleResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformWithMultipleResponse;->setFirst(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditOtMessage/TransformWithMultipleResponse;ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/TransformWithMultipleResponse;->setSecond(ILcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    return-object v0
.end method

.method private mergeFirst(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    :cond_0
    iput-object p1, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static newBuilder()LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/TransformWithMultipleResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOtMessage/TransformWithMultipleResponse;)LcoeditOtMessage/TransformWithMultipleResponse$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformWithMultipleResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/TransformWithMultipleResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSecond(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->ensureSecondIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFirst(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method private setSecond(ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/TransformWithMultipleResponse;->ensureSecondIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOtMessage/TransformWithMultipleResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOtMessage/TransformWithMultipleResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOtMessage/TransformWithMultipleResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOtMessage/TransformWithMultipleResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOtMessage/TransformWithMultipleResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "first_"

    aput-object v0, p1, p3

    const-string p3, "second_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, LcoeditOtMessage/IdxCedOpsPair;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b"

    sget-object p3, LcoeditOtMessage/TransformWithMultipleResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOtMessage/TransformWithMultipleResponse$Builder;

    invoke-direct {p1, p3}, LcoeditOtMessage/TransformWithMultipleResponse$Builder;-><init>(LcoeditOtMessage/i;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOtMessage/TransformWithMultipleResponse;

    invoke-direct {p1}, LcoeditOtMessage/TransformWithMultipleResponse;-><init>()V

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

.method public getFirst()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecond(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    return-object p1
.end method

.method public getSecondCount()I
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecondList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSecondOrBuilder(I)LcoeditOtMessage/IdxCedOpsPairOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPairOrBuilder;

    return-object p1
.end method

.method public getSecondOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->second_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasFirst()Z
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformWithMultipleResponse;->first_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
