.class public final enum LcoeditCoreMessage/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/EventType$EventTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditCoreMessage/EventType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditCoreMessage/EventType;

.field public static final enum CHANGE_MEMBER_PERMISSION:LcoeditCoreMessage/EventType;

.field public static final CHANGE_MEMBER_PERMISSION_VALUE:I = 0x1

.field public static final enum DELETE_MEMBER:LcoeditCoreMessage/EventType;

.field public static final DELETE_MEMBER_VALUE:I = 0x2

.field public static final enum DELETE_NOTE_RESOURCE:LcoeditCoreMessage/EventType;

.field public static final DELETE_NOTE_RESOURCE_VALUE:I = 0x0

.field public static final enum IS_SERVER_UNDER_MAINTENANCE:LcoeditCoreMessage/EventType;

.field public static final IS_SERVER_UNDER_MAINTENANCE_VALUE:I = 0x5

.field public static final enum UNRECOGNIZED:LcoeditCoreMessage/EventType;

.field public static final enum UPDATE_APP_VERSION:LcoeditCoreMessage/EventType;

.field public static final UPDATE_APP_VERSION_VALUE:I = 0x4

.field public static final enum UPDATE_DOCUMENT_XML_VERSION:LcoeditCoreMessage/EventType;

.field public static final UPDATE_DOCUMENT_XML_VERSION_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/EventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, LcoeditCoreMessage/EventType;

    const-string v1, "DELETE_NOTE_RESOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditCoreMessage/EventType;->DELETE_NOTE_RESOURCE:LcoeditCoreMessage/EventType;

    new-instance v1, LcoeditCoreMessage/EventType;

    const-string v3, "CHANGE_MEMBER_PERMISSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditCoreMessage/EventType;->CHANGE_MEMBER_PERMISSION:LcoeditCoreMessage/EventType;

    new-instance v3, LcoeditCoreMessage/EventType;

    const-string v5, "DELETE_MEMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditCoreMessage/EventType;->DELETE_MEMBER:LcoeditCoreMessage/EventType;

    new-instance v5, LcoeditCoreMessage/EventType;

    const-string v7, "UPDATE_DOCUMENT_XML_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, LcoeditCoreMessage/EventType;->UPDATE_DOCUMENT_XML_VERSION:LcoeditCoreMessage/EventType;

    new-instance v7, LcoeditCoreMessage/EventType;

    const-string v9, "UPDATE_APP_VERSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v7, LcoeditCoreMessage/EventType;->UPDATE_APP_VERSION:LcoeditCoreMessage/EventType;

    new-instance v9, LcoeditCoreMessage/EventType;

    const-string v11, "IS_SERVER_UNDER_MAINTENANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v9, LcoeditCoreMessage/EventType;->IS_SERVER_UNDER_MAINTENANCE:LcoeditCoreMessage/EventType;

    new-instance v11, LcoeditCoreMessage/EventType;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, LcoeditCoreMessage/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v11, LcoeditCoreMessage/EventType;->UNRECOGNIZED:LcoeditCoreMessage/EventType;

    const/4 v13, 0x7

    new-array v13, v13, [LcoeditCoreMessage/EventType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, LcoeditCoreMessage/EventType;->$VALUES:[LcoeditCoreMessage/EventType;

    new-instance v0, LcoeditCoreMessage/EventType$1;

    invoke-direct {v0}, LcoeditCoreMessage/EventType$1;-><init>()V

    sput-object v0, LcoeditCoreMessage/EventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LcoeditCoreMessage/EventType;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditCoreMessage/EventType;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditCoreMessage/EventType;->IS_SERVER_UNDER_MAINTENANCE:LcoeditCoreMessage/EventType;

    return-object p0

    :cond_1
    sget-object p0, LcoeditCoreMessage/EventType;->UPDATE_APP_VERSION:LcoeditCoreMessage/EventType;

    return-object p0

    :cond_2
    sget-object p0, LcoeditCoreMessage/EventType;->UPDATE_DOCUMENT_XML_VERSION:LcoeditCoreMessage/EventType;

    return-object p0

    :cond_3
    sget-object p0, LcoeditCoreMessage/EventType;->DELETE_MEMBER:LcoeditCoreMessage/EventType;

    return-object p0

    :cond_4
    sget-object p0, LcoeditCoreMessage/EventType;->CHANGE_MEMBER_PERMISSION:LcoeditCoreMessage/EventType;

    return-object p0

    :cond_5
    sget-object p0, LcoeditCoreMessage/EventType;->DELETE_NOTE_RESOURCE:LcoeditCoreMessage/EventType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/EventType;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/EventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventType$EventTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditCoreMessage/EventType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditCoreMessage/EventType;->forNumber(I)LcoeditCoreMessage/EventType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditCoreMessage/EventType;
    .locals 1

    const-class v0, LcoeditCoreMessage/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/EventType;

    return-object p0
.end method

.method public static values()[LcoeditCoreMessage/EventType;
    .locals 1

    sget-object v0, LcoeditCoreMessage/EventType;->$VALUES:[LcoeditCoreMessage/EventType;

    invoke-virtual {v0}, [LcoeditCoreMessage/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditCoreMessage/EventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditCoreMessage/EventType;->UNRECOGNIZED:LcoeditCoreMessage/EventType;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditCoreMessage/EventType;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
