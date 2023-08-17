.class public final LcoeditObjectStg/DeleteRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectStg/DeleteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectStg/DeleteRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectStg/DeleteRequest;",
        "LcoeditObjectStg/DeleteRequest$Builder;",
        ">;",
        "LcoeditObjectStg/DeleteRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectStg/DeleteRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private workspaceId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectStg/DeleteRequest;

    invoke-direct {v0}, LcoeditObjectStg/DeleteRequest;-><init>()V

    sput-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    const-class v1, LcoeditObjectStg/DeleteRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditObjectStg/DeleteRequest;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectStg/DeleteRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/DeleteRequest;->clearWorkspaceId()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectStg/DeleteRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/DeleteRequest;->setWorkspaceId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectStg/DeleteRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/DeleteRequest;->setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearWorkspaceId()V
    .locals 1

    invoke-static {}, LcoeditObjectStg/DeleteRequest;->getDefaultInstance()LcoeditObjectStg/DeleteRequest;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectStg/DeleteRequest;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectStg/DeleteRequest;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d()LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    return-object v0
.end method

.method public static newBuilder()LcoeditObjectStg/DeleteRequest$Builder;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectStg/DeleteRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectStg/DeleteRequest;)LcoeditObjectStg/DeleteRequest$Builder;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/DeleteRequest;
    .locals 1

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/DeleteRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectStg/DeleteRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setWorkspaceId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectStg/DeleteRequest;->workspaceId_:Ljava/lang/String;

    return-void
.end method

.method private setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectStg/DeleteRequest;->workspaceId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, LcoeditObjectStg/DeleteRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectStg/DeleteRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectStg/DeleteRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectStg/DeleteRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectStg/DeleteRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "workspaceId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    sget-object p3, LcoeditObjectStg/DeleteRequest;->DEFAULT_INSTANCE:LcoeditObjectStg/DeleteRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectStg/DeleteRequest$Builder;

    invoke-direct {p1, p3}, LcoeditObjectStg/DeleteRequest$Builder;-><init>(LcoeditObjectStg/a;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectStg/DeleteRequest;

    invoke-direct {p1}, LcoeditObjectStg/DeleteRequest;-><init>()V

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

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditObjectStg/DeleteRequest;->workspaceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectStg/DeleteRequest;->workspaceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
