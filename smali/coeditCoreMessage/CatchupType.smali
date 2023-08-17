.class public final enum LcoeditCoreMessage/CatchupType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/CatchupType$CatchupTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditCoreMessage/CatchupType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditCoreMessage/CatchupType;

.field public static final enum ABNORMAL_NOTIFY_LOST:LcoeditCoreMessage/CatchupType;

.field public static final ABNORMAL_NOTIFY_LOST_VALUE:I = 0x2

.field public static final enum ABNORMAL_SUBMIT_ACK_LOST:LcoeditCoreMessage/CatchupType;

.field public static final ABNORMAL_SUBMIT_ACK_LOST_VALUE:I = 0x1

.field public static final enum NORMAL_NEW_MEMBER:LcoeditCoreMessage/CatchupType;

.field public static final NORMAL_NEW_MEMBER_VALUE:I

.field public static final enum UNRECOGNIZED:LcoeditCoreMessage/CatchupType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/CatchupType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, LcoeditCoreMessage/CatchupType;

    const-string v1, "NORMAL_NEW_MEMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditCoreMessage/CatchupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditCoreMessage/CatchupType;->NORMAL_NEW_MEMBER:LcoeditCoreMessage/CatchupType;

    new-instance v1, LcoeditCoreMessage/CatchupType;

    const-string v3, "ABNORMAL_SUBMIT_ACK_LOST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditCoreMessage/CatchupType;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditCoreMessage/CatchupType;->ABNORMAL_SUBMIT_ACK_LOST:LcoeditCoreMessage/CatchupType;

    new-instance v3, LcoeditCoreMessage/CatchupType;

    const-string v5, "ABNORMAL_NOTIFY_LOST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LcoeditCoreMessage/CatchupType;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditCoreMessage/CatchupType;->ABNORMAL_NOTIFY_LOST:LcoeditCoreMessage/CatchupType;

    new-instance v5, LcoeditCoreMessage/CatchupType;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, LcoeditCoreMessage/CatchupType;-><init>(Ljava/lang/String;II)V

    sput-object v5, LcoeditCoreMessage/CatchupType;->UNRECOGNIZED:LcoeditCoreMessage/CatchupType;

    const/4 v7, 0x4

    new-array v7, v7, [LcoeditCoreMessage/CatchupType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, LcoeditCoreMessage/CatchupType;->$VALUES:[LcoeditCoreMessage/CatchupType;

    new-instance v0, LcoeditCoreMessage/CatchupType$1;

    invoke-direct {v0}, LcoeditCoreMessage/CatchupType$1;-><init>()V

    sput-object v0, LcoeditCoreMessage/CatchupType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, LcoeditCoreMessage/CatchupType;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditCoreMessage/CatchupType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditCoreMessage/CatchupType;->ABNORMAL_NOTIFY_LOST:LcoeditCoreMessage/CatchupType;

    return-object p0

    :cond_1
    sget-object p0, LcoeditCoreMessage/CatchupType;->ABNORMAL_SUBMIT_ACK_LOST:LcoeditCoreMessage/CatchupType;

    return-object p0

    :cond_2
    sget-object p0, LcoeditCoreMessage/CatchupType;->NORMAL_NEW_MEMBER:LcoeditCoreMessage/CatchupType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/CatchupType;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/CatchupType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupType$CatchupTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditCoreMessage/CatchupType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditCoreMessage/CatchupType;->forNumber(I)LcoeditCoreMessage/CatchupType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditCoreMessage/CatchupType;
    .locals 1

    const-class v0, LcoeditCoreMessage/CatchupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupType;

    return-object p0
.end method

.method public static values()[LcoeditCoreMessage/CatchupType;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupType;->$VALUES:[LcoeditCoreMessage/CatchupType;

    invoke-virtual {v0}, [LcoeditCoreMessage/CatchupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditCoreMessage/CatchupType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditCoreMessage/CatchupType;->UNRECOGNIZED:LcoeditCoreMessage/CatchupType;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditCoreMessage/CatchupType;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
