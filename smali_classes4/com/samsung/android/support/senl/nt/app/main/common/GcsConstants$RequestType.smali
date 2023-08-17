.class public final enum Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum Delete:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum Invite:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum Leave:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum Member:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum None:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

.field public static final enum Rename:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;


# instance fields
.field public final spaceNetworkFail:I

.field public final spaceServerFail:I

.field public final standaloneNetworkFail:I

.field public final standaloneServerFail:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->None:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_create_network_fail:I

    sget v12, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_create_network_fail:I

    sget v13, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_create_unknown_fail:I

    sget v14, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_create_unknown_fail:I

    const-string v9, "Create"

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    sget v18, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_delete_network_fail:I

    sget v19, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_delete_network_fail:I

    sget v20, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_delete_unknown_fail:I

    sget v21, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_delete_unknown_fail:I

    const-string v16, "Delete"

    const/16 v17, 0x2

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Delete:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_leave_network_fail:I

    sget v12, Lcom/samsung/android/support/senl/nt/app/R$string;->coedit_leave_network_fail:I

    sget v13, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_leave_unknown_fail:I

    sget v14, Lcom/samsung/android/support/senl/nt/app/R$string;->coedit_leave_unknown_fail:I

    const-string v9, "Leave"

    const/4 v10, 0x3

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Leave:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    sget v18, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_rename_network_fail:I

    sget v19, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_rename_network_fail:I

    sget v20, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_standalone_rename_unknown_fail:I

    sget v21, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_rename_unknown_fail:I

    const-string v16, "Rename"

    const/16 v17, 0x4

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Rename:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    sget v12, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_network_fail:I

    const-string v9, "Invite"

    const/4 v10, 0x5

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v8, v4

    move v11, v12

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Invite:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    sget v19, Lcom/samsung/android/support/senl/nt/app/R$string;->network_error_check_your_network_connection_and_try_again:I

    const-string v16, "Member"

    const/16 v17, 0x6

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object v15, v5

    move/from16 v18, v19

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;-><init>(Ljava/lang/String;IIIII)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Member:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    sput-object v6, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->standaloneNetworkFail:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->spaceNetworkFail:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->standaloneServerFail:I

    iput p6, p0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->spaceServerFail:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    return-object v0
.end method
