package com.chinahealth.bean;

public class ArticleItemTable {

    public static final String TABLE_NAME = "article_item";

    public static final String UID = "uid";

    /**
     * 0.HOME<br/> 1.FOOD<br/> 2.TEA<br/> 3.KONGFU<br/> 4.BUDDHISM<br/>
     */
    public static final String GROUP_TYPE = "group_type";

    /**
     * 0.NORMAL_TEXT<br/> 1.NORMAL_VIDEO<br/> 2.GALLERY<br/> 3.PROMOTION<br/>
     */
    public static final String TYPE = "type";

    public static final String TITLE = "title";

    /**
     * article's source from where
     */
    public static final String SOURCE = "source";

    public static final String COMMENT_NUMS = "comment_nums";

    public static final String PUBLISH_TIME = "publish_time";

    public static final String THUMBNAIL_URIS = "thumbnail_uris";
}
