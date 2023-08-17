.class public final Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/PackageProperties;


# static fields
.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final DEFAULT_DATEFORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final NAMESPACE_CP_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

.field public static final NAMESPACE_DCTERMS_URI:Ljava/lang/String; = "http://purl.org/dc/terms/"

.field public static final NAMESPACE_DC_URI:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"


# instance fields
.field private final TIME_ZONE_PAT:Ljava/util/regex/Pattern;

.field private final TZ_DATE_FORMATS:[Ljava/lang/String;

.field public category:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public contentType:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public created:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public creator:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public description:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public identifier:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public keywords:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public language:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public modified:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public revision:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subject:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public version:Lorg/apache/poi/openxml4j/util/Nullable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SS\'Z\'"

    const-string/jumbo v2, "yyyy-MM-dd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 2

    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ssz"

    const-string/jumbo p2, "yyyy-MM-dd\'T\'HH:mm:ss.Sz"

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSz"

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    filled-new-array {p1, p2, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    const-string p1, "([-+]\\d\\d):?(\\d\\d)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TIME_ZONE_PAT:Ljava/util/regex/Pattern;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method private getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TIME_ZONE_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v6, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v5, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v6, v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1, v5}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v6, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v5, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v6, v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1, v5}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_3
    const-string v6, ", "

    if-ge v4, v3, :cond_7

    aget-object v7, v1, v4

    add-int/lit8 v8, v5, 0x1

    if-lez v5, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_3

    :cond_7
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_8

    aget-object v4, v1, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not well formatted, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "expected format in: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    return-object p1
.end method

.method private setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p1, Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>()V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getCategoryProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getContentStatusProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getContentTypeProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getCreatedProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getCreatedPropertyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getDescriptionProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getIdentifierProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getInputStreamImpl()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeywordsProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLanguageProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLastModifiedByProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLastPrintedProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getLastPrintedPropertyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getModifiedPropertyString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Lorg/apache/poi/openxml4j/util/Nullable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/Nullable;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/util/Nullable;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Can\'t use output stream to set properties !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRevisionProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getSubjectProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getTitleProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public getVersionProperty()Lorg/apache/poi/openxml4j/util/Nullable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Lorg/apache/poi/openxml4j/util/Nullable;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 1

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 1

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCategoryProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setContentStatusProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setContentTypeProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setCreatedProperty(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date for created could not be parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCreatedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Lorg/apache/poi/openxml4j/util/Nullable;

    :cond_0
    return-void
.end method

.method public setCreatorProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setDescriptionProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setIdentifierProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setKeywordsProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setLanguageProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setLastModifiedByProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setLastPrintedProperty(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastPrinted  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setLastPrintedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Lorg/apache/poi/openxml4j/util/Nullable;

    :cond_0
    return-void
.end method

.method public setModifiedProperty(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDateValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modified  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setModifiedProperty(Lorg/apache/poi/openxml4j/util/Nullable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/util/Nullable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/Nullable;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Lorg/apache/poi/openxml4j/util/Nullable;

    :cond_0
    return-void
.end method

.method public setRevisionProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setSubjectProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setTitleProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method

.method public setVersionProperty(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setStringValue(Ljava/lang/String;)Lorg/apache/poi/openxml4j/util/Nullable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Lorg/apache/poi/openxml4j/util/Nullable;

    return-void
.end method
