.class public final LcoeditOperation/CoeditOperation$UpdateAttributes;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$UpdateAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOperation/CoeditOperation$UpdateAttributes;",
        "LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$UpdateAttributesOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANGE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$UpdateAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private change_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-direct {v0}, LcoeditOperation/CoeditOperation$UpdateAttributes;-><init>()V

    sput-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    const-class v1, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOperation/CoeditOperation$UpdateAttributes;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->addAllChange(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllChange(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->ensureChangeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->ensureChangeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addChange(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->ensureChangeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOperation/CoeditOperation$UpdateAttributes;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$UpdateAttributes;->addChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOperation/CoeditOperation$UpdateAttributes;LcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->addChange(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-void
.end method

.method private clearChange()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOperation/CoeditOperation$UpdateAttributes;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->clearChange()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOperation/CoeditOperation$UpdateAttributes;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;->removeChange(I)V

    return-void
.end method

.method private ensureChangeIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOperation/CoeditOperation$UpdateAttributes;ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$UpdateAttributes;->setChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-void
.end method

.method public static bridge synthetic g()LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object v0
.end method

.method public static newBuilder()LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOperation/CoeditOperation$UpdateAttributes;)LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$UpdateAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$UpdateAttributes;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeChange(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->ensureChangeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setChange(ILcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$UpdateAttributes;->ensureChangeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, LcoeditOperation/CoeditOperation$UpdateAttributes;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOperation/CoeditOperation$UpdateAttributes;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOperation/CoeditOperation$UpdateAttributes;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOperation/CoeditOperation$UpdateAttributes;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "change_"

    aput-object v0, p1, p3

    const-class p3, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, LcoeditOperation/CoeditOperation$UpdateAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;

    invoke-direct {p1, p3}, LcoeditOperation/CoeditOperation$UpdateAttributes$Builder;-><init>(LcoeditOperation/j;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOperation/CoeditOperation$UpdateAttributes;

    invoke-direct {p1}, LcoeditOperation/CoeditOperation$UpdateAttributes;-><init>()V

    return-object p1

    nop

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

.method public getChange(I)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p1
.end method

.method public getChangeCount()I
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getChangeOrBuilder(I)LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;

    return-object p1
.end method

.method public getChangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$UpdateAttributes;->change_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
