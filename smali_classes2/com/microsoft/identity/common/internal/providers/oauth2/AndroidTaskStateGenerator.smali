.class public Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;
.super Lcom/microsoft/identity/common/java/providers/oauth2/DefaultStateGenerator;
.source "SourceFile"


# static fields
.field private static final SPLITTER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "AndroidTaskStateGenerator"


# instance fields
.field private taskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/DefaultStateGenerator;-><init>()V

    iput p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;->taskId:I

    return-void
.end method

.method public static getTaskFromState(Ljava/lang/String;)I
    .locals 3

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AndroidTaskStateGenerator:getTaskFromState"

    const-string v2, "Unable to parse state"

    invoke-static {v0, v2, p0}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 5
    .annotation build Llombok/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/DefaultStateGenerator;->generate()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "%d%s%s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;->taskId:I

    return v0
.end method
