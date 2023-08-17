.class public final enum LcoeditOperation/ChangeType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/ChangeType$ChangeTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditOperation/ChangeType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditOperation/ChangeType;

.field public static final enum DELETE_CHARACTERS:LcoeditOperation/ChangeType;

.field public static final DELETE_CHARACTERS_VALUE:I = 0x1

.field public static final enum DELETE_ELEMENTS:LcoeditOperation/ChangeType;

.field public static final DELETE_ELEMENTS_VALUE:I = 0x3

.field public static final enum DELETE_OBJECT_SPAN:LcoeditOperation/ChangeType;

.field public static final DELETE_OBJECT_SPAN_VALUE:I = 0x9

.field public static final enum INSERT_CHARACTERS:LcoeditOperation/ChangeType;

.field public static final INSERT_CHARACTERS_VALUE:I = 0x0

.field public static final enum INSERT_ELEMENTS:LcoeditOperation/ChangeType;

.field public static final INSERT_ELEMENTS_VALUE:I = 0x2

.field public static final enum INSERT_OBJECT_SPAN:LcoeditOperation/ChangeType;

.field public static final INSERT_OBJECT_SPAN_VALUE:I = 0x8

.field public static final enum REPLACE_ATTRIBUTES:LcoeditOperation/ChangeType;

.field public static final REPLACE_ATTRIBUTES_VALUE:I = 0x5

.field public static final enum RETAIN:LcoeditOperation/ChangeType;

.field public static final RETAIN_VALUE:I = 0x7

.field public static final enum SET_ANNOTATIONS:LcoeditOperation/ChangeType;

.field public static final SET_ANNOTATIONS_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:LcoeditOperation/ChangeType;

.field public static final enum UPDATE_ATTRIBUTES:LcoeditOperation/ChangeType;

.field public static final UPDATE_ATTRIBUTES_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditOperation/ChangeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, LcoeditOperation/ChangeType;

    const-string v1, "INSERT_CHARACTERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditOperation/ChangeType;->INSERT_CHARACTERS:LcoeditOperation/ChangeType;

    new-instance v1, LcoeditOperation/ChangeType;

    const-string v3, "DELETE_CHARACTERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditOperation/ChangeType;->DELETE_CHARACTERS:LcoeditOperation/ChangeType;

    new-instance v3, LcoeditOperation/ChangeType;

    const-string v5, "INSERT_ELEMENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, LcoeditOperation/ChangeType;->INSERT_ELEMENTS:LcoeditOperation/ChangeType;

    new-instance v5, LcoeditOperation/ChangeType;

    const-string v7, "DELETE_ELEMENTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, LcoeditOperation/ChangeType;->DELETE_ELEMENTS:LcoeditOperation/ChangeType;

    new-instance v7, LcoeditOperation/ChangeType;

    const-string v9, "UPDATE_ATTRIBUTES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v7, LcoeditOperation/ChangeType;->UPDATE_ATTRIBUTES:LcoeditOperation/ChangeType;

    new-instance v9, LcoeditOperation/ChangeType;

    const-string v11, "REPLACE_ATTRIBUTES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v9, LcoeditOperation/ChangeType;->REPLACE_ATTRIBUTES:LcoeditOperation/ChangeType;

    new-instance v11, LcoeditOperation/ChangeType;

    const-string v13, "SET_ANNOTATIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v11, LcoeditOperation/ChangeType;->SET_ANNOTATIONS:LcoeditOperation/ChangeType;

    new-instance v13, LcoeditOperation/ChangeType;

    const-string v15, "RETAIN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v13, LcoeditOperation/ChangeType;->RETAIN:LcoeditOperation/ChangeType;

    new-instance v15, LcoeditOperation/ChangeType;

    const-string v14, "INSERT_OBJECT_SPAN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v15, LcoeditOperation/ChangeType;->INSERT_OBJECT_SPAN:LcoeditOperation/ChangeType;

    new-instance v14, LcoeditOperation/ChangeType;

    const-string v12, "DELETE_OBJECT_SPAN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v14, LcoeditOperation/ChangeType;->DELETE_OBJECT_SPAN:LcoeditOperation/ChangeType;

    new-instance v12, LcoeditOperation/ChangeType;

    const-string v10, "UNRECOGNIZED"

    const/16 v8, 0xa

    const/4 v6, -0x1

    invoke-direct {v12, v10, v8, v6}, LcoeditOperation/ChangeType;-><init>(Ljava/lang/String;II)V

    sput-object v12, LcoeditOperation/ChangeType;->UNRECOGNIZED:LcoeditOperation/ChangeType;

    const/16 v6, 0xb

    new-array v6, v6, [LcoeditOperation/ChangeType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    sput-object v6, LcoeditOperation/ChangeType;->$VALUES:[LcoeditOperation/ChangeType;

    new-instance v0, LcoeditOperation/ChangeType$1;

    invoke-direct {v0}, LcoeditOperation/ChangeType$1;-><init>()V

    sput-object v0, LcoeditOperation/ChangeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, LcoeditOperation/ChangeType;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditOperation/ChangeType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, LcoeditOperation/ChangeType;->DELETE_OBJECT_SPAN:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_1
    sget-object p0, LcoeditOperation/ChangeType;->INSERT_OBJECT_SPAN:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_2
    sget-object p0, LcoeditOperation/ChangeType;->RETAIN:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_3
    sget-object p0, LcoeditOperation/ChangeType;->SET_ANNOTATIONS:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_4
    sget-object p0, LcoeditOperation/ChangeType;->REPLACE_ATTRIBUTES:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_5
    sget-object p0, LcoeditOperation/ChangeType;->UPDATE_ATTRIBUTES:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_6
    sget-object p0, LcoeditOperation/ChangeType;->DELETE_ELEMENTS:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_7
    sget-object p0, LcoeditOperation/ChangeType;->INSERT_ELEMENTS:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_8
    sget-object p0, LcoeditOperation/ChangeType;->DELETE_CHARACTERS:LcoeditOperation/ChangeType;

    return-object p0

    :pswitch_9
    sget-object p0, LcoeditOperation/ChangeType;->INSERT_CHARACTERS:LcoeditOperation/ChangeType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "LcoeditOperation/ChangeType;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/ChangeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, LcoeditOperation/ChangeType$ChangeTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)LcoeditOperation/ChangeType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditOperation/ChangeType;->forNumber(I)LcoeditOperation/ChangeType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditOperation/ChangeType;
    .locals 1

    const-class v0, LcoeditOperation/ChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditOperation/ChangeType;

    return-object p0
.end method

.method public static values()[LcoeditOperation/ChangeType;
    .locals 1

    sget-object v0, LcoeditOperation/ChangeType;->$VALUES:[LcoeditOperation/ChangeType;

    invoke-virtual {v0}, [LcoeditOperation/ChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditOperation/ChangeType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, LcoeditOperation/ChangeType;->UNRECOGNIZED:LcoeditOperation/ChangeType;

    if-eq p0, v0, :cond_0

    iget v0, p0, LcoeditOperation/ChangeType;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
