.class public final LcoeditOperation/CoeditOperation$Elements;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$ElementsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Elements"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/CoeditOperation$Elements$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOperation/CoeditOperation$Elements;",
        "LcoeditOperation/CoeditOperation$Elements$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$ElementsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

.field public static final ELEMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$Elements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private element_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOperation/CoeditOperation$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOperation/CoeditOperation$Elements;

    invoke-direct {v0}, LcoeditOperation/CoeditOperation$Elements;-><init>()V

    sput-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    const-class v1, LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOperation/CoeditOperation$Elements;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$Elements;->addAllElement(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllElement(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$Element;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements;->ensureElementIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addElement(ILcoeditOperation/CoeditOperation$Element;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements;->ensureElementIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addElement(LcoeditOperation/CoeditOperation$Element;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements;->ensureElementIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOperation/CoeditOperation$Elements;ILcoeditOperation/CoeditOperation$Element;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$Elements;->addElement(ILcoeditOperation/CoeditOperation$Element;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOperation/CoeditOperation$Elements;LcoeditOperation/CoeditOperation$Element;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$Elements;->addElement(LcoeditOperation/CoeditOperation$Element;)V

    return-void
.end method

.method private clearElement()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOperation/CoeditOperation$Elements;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements;->clearElement()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOperation/CoeditOperation$Elements;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$Elements;->removeElement(I)V

    return-void
.end method

.method private ensureElementIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOperation/CoeditOperation$Elements;ILcoeditOperation/CoeditOperation$Element;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$Elements;->setElement(ILcoeditOperation/CoeditOperation$Element;)V

    return-void
.end method

.method public static bridge synthetic g()LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    return-object v0
.end method

.method public static newBuilder()LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation$Elements$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOperation/CoeditOperation$Elements;)LcoeditOperation/CoeditOperation$Elements$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$Elements;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$Elements;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$Elements;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeElement(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements;->ensureElementIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setElement(ILcoeditOperation/CoeditOperation$Element;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$Elements;->ensureElementIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

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
    sget-object p1, LcoeditOperation/CoeditOperation$Elements;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOperation/CoeditOperation$Elements;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOperation/CoeditOperation$Elements;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOperation/CoeditOperation$Elements;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "element_"

    aput-object v0, p1, p3

    const-class p3, LcoeditOperation/CoeditOperation$Element;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, LcoeditOperation/CoeditOperation$Elements;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$Elements;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOperation/CoeditOperation$Elements$Builder;

    invoke-direct {p1, p3}, LcoeditOperation/CoeditOperation$Elements$Builder;-><init>(LcoeditOperation/d;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOperation/CoeditOperation$Elements;

    invoke-direct {p1}, LcoeditOperation/CoeditOperation$Elements;-><init>()V

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

.method public getElement(I)LcoeditOperation/CoeditOperation$Element;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$Element;

    return-object p1
.end method

.method public getElementCount()I
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getElementOrBuilder(I)LcoeditOperation/CoeditOperation$ElementOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$ElementOrBuilder;

    return-object p1
.end method

.method public getElementOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOperation/CoeditOperation$ElementOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$Elements;->element_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
