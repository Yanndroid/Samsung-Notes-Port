.class public final enum LcoeditCoreMessage/PermissionType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/PermissionType$PermissionTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditCoreMessage/PermissionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditCoreMessage/PermissionType;

.field public static final enum EDIT:LcoeditCoreMessage/PermissionType;

.field public static final EDIT_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:LcoeditCoreMessage/PermissionType;

.field public static final enum VIEW:LcoeditCoreMessage/PermissionType;

.field public static final VIEW_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/PermissionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, LcoeditCoreMessage/PermissionType;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditCoreMessage/PermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditCoreMessage/PermissionType;->VIEW:LcoeditCoreMessage/PermissionType;

    new-instance v1, LcoeditCoreMessage/PermissionType;

    const-string v3, "EDIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditCoreMessage/PermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditCoreMessage/PermissionType;->EDIT:LcoeditCoreMessage/PermissionType;

    new-instance v3, LcoeditCoreMessage/PermissionType;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, LcoeditCoreMessage/PermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditCoreMessage/PermissionType;->UNRECOGNIZED:LcoeditCoreMessage/PermissionType;

    const/4 v5, 0x3

    new-array v5, v5, [LcoeditCoreMessage/PermissionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, LcoeditCoreMessage/PermissionType;->$VALUES:[LcoeditCoreMessage/PermissionType;

    new-instance v0, LcoeditCoreMessage/PermissionType$1;

    invoke-direct {v0}, LcoeditCoreMessage/PermissionType$1;-><init>()V

    sput-object v0, LcoeditCoreMessage/PermissionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, LcoeditCoreMessage/PermissionType;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditCoreMessage/PermissionType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditCoreMessage/PermissionType;->EDIT:LcoeditCoreMessage/PermissionType;

    return-object p0

    :cond_1
    sget-object p0, LcoeditCoreMessage/PermissionType;->VIEW:LcoeditCoreMessage/PermissionType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditCoreMessage/PermissionType;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/PermissionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditCoreMessage/PermissionType$PermissionTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditCoreMessage/PermissionType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditCoreMessage/PermissionType;->forNumber(I)LcoeditCoreMessage/PermissionType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditCoreMessage/PermissionType;
    .locals 1

    const-class v0, LcoeditCoreMessage/PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/PermissionType;

    return-object p0
.end method

.method public static values()[LcoeditCoreMessage/PermissionType;
    .locals 1

    sget-object v0, LcoeditCoreMessage/PermissionType;->$VALUES:[LcoeditCoreMessage/PermissionType;

    invoke-virtual {v0}, [LcoeditCoreMessage/PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditCoreMessage/PermissionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditCoreMessage/PermissionType;->UNRECOGNIZED:LcoeditCoreMessage/PermissionType;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditCoreMessage/PermissionType;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
