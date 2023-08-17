.class public final LcoeditOperation/CoeditOperation$ReplaceAttributes;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$ReplaceAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplaceAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOperation/CoeditOperation$ReplaceAttributes;",
        "LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$ReplaceAttributesOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

.field public static final NEW_ATTRIBUTE_FIELD_NUMBER:I = 0x2

.field public static final OLD_ATTRIBUTE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$ReplaceAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-direct {v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;-><init>()V

    sput-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    const-class v1, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOperation/CoeditOperation$ReplaceAttributes;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->addAllNewAttribute(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllNewAttribute(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureNewAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOldAttribute(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureOldAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureNewAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNewAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureNewAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureOldAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOldAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureOldAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOperation/CoeditOperation$ReplaceAttributes;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->addAllOldAttribute(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->addNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-void
.end method

.method private clearNewAttribute()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOldAttribute()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOperation/CoeditOperation$ReplaceAttributes;LcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->addNewAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->addOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-void
.end method

.method private ensureNewAttributeIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOldAttributeIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOperation/CoeditOperation$ReplaceAttributes;LcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->addOldAttribute(LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->clearNewAttribute()V

    return-void
.end method

.method public static getDefaultInstance()LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditOperation/CoeditOperation$ReplaceAttributes;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->clearOldAttribute()V

    return-void
.end method

.method public static bridge synthetic i(LcoeditOperation/CoeditOperation$ReplaceAttributes;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->removeNewAttribute(I)V

    return-void
.end method

.method public static bridge synthetic j(LcoeditOperation/CoeditOperation$ReplaceAttributes;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->removeOldAttribute(I)V

    return-void
.end method

.method public static bridge synthetic k(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->setNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-void
.end method

.method public static bridge synthetic l(LcoeditOperation/CoeditOperation$ReplaceAttributes;ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->setOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-void
.end method

.method public static bridge synthetic m()LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object v0
.end method

.method public static newBuilder()LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOperation/CoeditOperation$ReplaceAttributes;)LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CoeditOperation$ReplaceAttributes;
    .locals 1

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CoeditOperation$ReplaceAttributes;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeNewAttribute(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureNewAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOldAttribute(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureOldAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setNewAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureNewAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOldAttribute(ILcoeditOperation/CoeditOperation$KeyValuePair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ReplaceAttributes;->ensureOldAttributeIsMutable()V

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-class p2, LcoeditOperation/CoeditOperation$KeyValuePair;

    sget-object p3, LcoeditOperation/CoeditOperation$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "oldAttribute_"

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    const/4 p3, 0x2

    const-string v0, "newAttribute_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    sget-object p3, LcoeditOperation/CoeditOperation$ReplaceAttributes;->DEFAULT_INSTANCE:LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;

    invoke-direct {p1, v0}, LcoeditOperation/CoeditOperation$ReplaceAttributes$Builder;-><init>(LcoeditOperation/h;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOperation/CoeditOperation$ReplaceAttributes;

    invoke-direct {p1}, LcoeditOperation/CoeditOperation$ReplaceAttributes;-><init>()V

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

.method public getNewAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePair;

    return-object p1
.end method

.method public getNewAttributeCount()I
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNewAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNewAttributeOrBuilder(I)LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;

    return-object p1
.end method

.method public getNewAttributeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->newAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOldAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePair;

    return-object p1
.end method

.method public getOldAttributeCount()I
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOldAttributeOrBuilder(I)LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;

    return-object p1
.end method

.method public getOldAttributeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOperation/CoeditOperation$ReplaceAttributes;->oldAttribute_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
