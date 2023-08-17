.class public final LcoeditCoreMessage/EventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/EventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/EventInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/EventInfo;",
        "LcoeditCoreMessage/EventInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/EventInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITABLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private eventType_:I

.field private writable_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/EventInfo;

    invoke-direct {v0}, LcoeditCoreMessage/EventInfo;-><init>()V

    sput-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    const-class v1, LcoeditCoreMessage/EventInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/EventInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/EventInfo;->clearEventType()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/EventInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/EventInfo;->clearWritable()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/EventInfo;LcoeditCoreMessage/EventType;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/EventInfo;->setEventType(LcoeditCoreMessage/EventType;)V

    return-void
.end method

.method private clearEventType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditCoreMessage/EventInfo;->eventType_:I

    return-void
.end method

.method private clearWritable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LcoeditCoreMessage/EventInfo;->writable_:Z

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/EventInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/EventInfo;->setEventTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/EventInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/EventInfo;->setWritable(Z)V

    return-void
.end method

.method public static bridge synthetic f()LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    return-object v0
.end method

.method public static newBuilder()LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/EventInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/EventInfo;)LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/EventInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/EventInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEventType(LcoeditCoreMessage/EventType;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/EventType;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditCoreMessage/EventInfo;->eventType_:I

    return-void
.end method

.method private setEventTypeValue(I)V
    .locals 0

    iput p1, p0, LcoeditCoreMessage/EventInfo;->eventType_:I

    return-void
.end method

.method private setWritable(Z)V
    .locals 0

    iput-boolean p1, p0, LcoeditCoreMessage/EventInfo;->writable_:Z

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/EventInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/EventInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/EventInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/EventInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/EventInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "eventType_"

    aput-object v0, p1, p3

    const-string p3, "writable_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u0007"

    sget-object p3, LcoeditCoreMessage/EventInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/EventInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/EventInfo$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/EventInfo$Builder;-><init>(LcoeditCoreMessage/g;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/EventInfo;

    invoke-direct {p1}, LcoeditCoreMessage/EventInfo;-><init>()V

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

.method public getEventType()LcoeditCoreMessage/EventType;
    .locals 1

    iget v0, p0, LcoeditCoreMessage/EventInfo;->eventType_:I

    invoke-static {v0}, LcoeditCoreMessage/EventType;->forNumber(I)LcoeditCoreMessage/EventType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditCoreMessage/EventType;->UNRECOGNIZED:LcoeditCoreMessage/EventType;

    :cond_0
    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    iget v0, p0, LcoeditCoreMessage/EventInfo;->eventType_:I

    return v0
.end method

.method public getWritable()Z
    .locals 1

    iget-boolean v0, p0, LcoeditCoreMessage/EventInfo;->writable_:Z

    return v0
.end method
