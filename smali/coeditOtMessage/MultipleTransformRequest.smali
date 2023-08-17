.class public final LcoeditOtMessage/MultipleTransformRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/MultipleTransformRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOtMessage/MultipleTransformRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOtMessage/MultipleTransformRequest;",
        "LcoeditOtMessage/MultipleTransformRequest$Builder;",
        ">;",
        "LcoeditOtMessage/MultipleTransformRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

.field public static final FIRST_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/MultipleTransformRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECOND_FIELD_NUMBER:I = 0x2


# instance fields
.field private first_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation
.end field

.field private second_:LcoeditOtMessage/IdxCedOpsPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOtMessage/MultipleTransformRequest;

    invoke-direct {v0}, LcoeditOtMessage/MultipleTransformRequest;-><init>()V

    sput-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    const-class v1, LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOtMessage/MultipleTransformRequest;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/MultipleTransformRequest;->addAllFirst(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllFirst(Ljava/lang/Iterable;)V
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

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->ensureFirstIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addFirst(ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->ensureFirstIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFirst(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->ensureFirstIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOtMessage/MultipleTransformRequest;ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/MultipleTransformRequest;->addFirst(ILcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/MultipleTransformRequest;->addFirst(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private clearFirst()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSecond()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOtMessage/MultipleTransformRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->clearFirst()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOtMessage/MultipleTransformRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->clearSecond()V

    return-void
.end method

.method private ensureFirstIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/MultipleTransformRequest;->mergeSecond(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditOtMessage/MultipleTransformRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/MultipleTransformRequest;->removeFirst(I)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditOtMessage/MultipleTransformRequest;ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/MultipleTransformRequest;->setFirst(ILcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditOtMessage/MultipleTransformRequest;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/MultipleTransformRequest;->setSecond(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    return-object v0
.end method

.method private mergeSecond(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    :cond_0
    iput-object p1, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static newBuilder()LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/MultipleTransformRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOtMessage/MultipleTransformRequest;)LcoeditOtMessage/MultipleTransformRequest$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/MultipleTransformRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/MultipleTransformRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/MultipleTransformRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFirst(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->ensureFirstIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFirst(ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/MultipleTransformRequest;->ensureFirstIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSecond(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOtMessage/MultipleTransformRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOtMessage/MultipleTransformRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOtMessage/MultipleTransformRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOtMessage/MultipleTransformRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOtMessage/MultipleTransformRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "first_"

    aput-object v0, p1, p3

    const-class p3, LcoeditOtMessage/IdxCedOpsPair;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "second_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\t"

    sget-object p3, LcoeditOtMessage/MultipleTransformRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/MultipleTransformRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOtMessage/MultipleTransformRequest$Builder;

    invoke-direct {p1, p3}, LcoeditOtMessage/MultipleTransformRequest$Builder;-><init>(LcoeditOtMessage/d;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOtMessage/MultipleTransformRequest;

    invoke-direct {p1}, LcoeditOtMessage/MultipleTransformRequest;-><init>()V

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

.method public getFirst(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    return-object p1
.end method

.method public getFirstCount()I
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFirstList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFirstOrBuilder(I)LcoeditOtMessage/IdxCedOpsPairOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPairOrBuilder;

    return-object p1
.end method

.method public getFirstOrBuilderList()Ljava/util/List;
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

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->first_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSecond()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasSecond()Z
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/MultipleTransformRequest;->second_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
