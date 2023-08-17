.class public final enum Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

.field public static final enum Favorite:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

.field public static final enum LockedNotes:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

.field public static final enum Tag:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;


# instance fields
.field private final key:I

.field private final uuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    const-string v1, "Favorite"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "favorite:///"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->Favorite:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    const-string v4, "LockedNotes"

    const/4 v5, 0x2

    const-string v6, "lock:///"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->LockedNotes:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    const-string v6, "Tag"

    const/4 v7, 0x3

    const-string v8, "tag:///"

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->Tag:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    new-array v6, v7, [Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->key:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->uuid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->key:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel$FilterType;->uuid:Ljava/lang/String;

    return-object v0
.end method
