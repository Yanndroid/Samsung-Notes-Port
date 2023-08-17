.class public Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Updates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Updates"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LANG:Ljava/lang/String; = "lang"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sdk.handwriting.resourcemanager/updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
