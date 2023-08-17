.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/constants/Constants$UserContextBasedContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/common/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserContextBasedContent"
.end annotation


# static fields
.field public static final REQUEST_KNOWLEDGE:Ljava/lang/String; = "{\n    \"@type\": \"http://schema.org/PropertyValue\",\n    \"http://schema.org/name\": \"type\",\n    \"http://schema.org/value\": [\"<http://schema.org/WebPage>\",\"<http://schema.org/ImageObject>\",\"<http://schema.org/Message>\"]\n}"

.field public static final RESPONSE_BUNDLE_EXTRA_SOURCES:Ljava/lang/String; = "source"

.field public static final RESPONSE_BUNDLE_EXTRA_SUGGESTIONS:Ljava/lang/String; = "suggestions"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
