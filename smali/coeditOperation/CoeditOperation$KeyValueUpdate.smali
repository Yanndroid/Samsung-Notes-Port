.class public final LcoeditOperation/CoeditOperation$KeyValueUpdate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyValueUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
        "LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final NEW_VALUE_FIELD_NUMBER:I = 0x3

.field public static final OLD_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private key_:Ljava/lang/String;

.field private newValue_:Ljava/lang/String;

.field private oldValue_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-direct {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;-><init>()V

    sput-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    const-class v1, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->key_:Ljava/lang/String;

    iput-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->oldValue_:Ljava/lang/String;

    iput-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newValue_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->clearKey()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->clearNewValue()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->clearOldValue()V

    return-void
.end method

.method private clearKey()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getDefaultInstance()LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->key_:Ljava/lang/String;

    return-void
.end method

.method private clearNewValue()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getDefaultInstance()LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newValue_:Ljava/lang/String;

    return-void
.end method

.method private clearOldValue()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getDefaultInstance()LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object v0

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->oldValue_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOperation/CoeditOperation$KeyValueUpdate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOperation/CoeditOperation$KeyValueUpdate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->setKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditOperation/CoeditOperation$KeyValueUpdate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->setNewValue(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditOperation/CoeditOperation$KeyValueUpdate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->setNewValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditOperation/CoeditOperation$KeyValueUpdate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->setOldValue(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditOperation/CoeditOperation$KeyValueUpdate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->setOldValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object v0
.end method

.method public static newBuilder()LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOperation/CoeditOperation$KeyValueUpdate;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$KeyValueUpdate;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKey(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->key_:Ljava/lang/String;

    return-void
.end method

.method private setKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->key_:Ljava/lang/String;

    return-void
.end method

.method private setNewValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newValue_:Ljava/lang/String;

    return-void
.end method

.method private setNewValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newValue_:Ljava/lang/String;

    return-void
.end method

.method private setOldValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->oldValue_:Ljava/lang/String;

    return-void
.end method

.method private setOldValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->oldValue_:Ljava/lang/String;

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
    sget-object p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "key_"

    aput-object v0, p1, p3

    const-string p3, "oldValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "newValue_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    sget-object p3, LcoeditOperation/CoeditOperation$KeyValueUpdate;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;

    invoke-direct {p1, p3}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;-><init>(LcoeditOperation/f;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-direct {p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;-><init>()V

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

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->key_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->newValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->oldValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$KeyValueUpdate;->oldValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
