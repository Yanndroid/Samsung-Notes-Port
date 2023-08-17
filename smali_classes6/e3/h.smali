.class public final synthetic Le3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Le3/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le3/h;

    invoke-direct {v0}, Le3/h;-><init>()V

    sput-object v0, Le3/h;->a:Le3/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->g(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
